package com.goshop.manager.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.common.attachment.AttachmentService;
import com.goshop.common.exception.PageException;
import com.goshop.common.pojo.*;
import com.goshop.common.utils.JsonUtils;
import com.goshop.manager.i.GoodsClassService;
import com.goshop.manager.i.GoodsTypeService;
import com.goshop.manager.pojo.GoodsClass;
import com.goshop.manager.pojo.GoodsType;
import com.goshop.manager.pojo.StoreGrade;
import com.goshop.manager.utils.Jump;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/goods_class")
public class GoodsClassController {

    @Autowired
    GoodsTypeService goodsTypeService;

    @Autowired
    GoodsClassService goodsClassService;

    @Autowired
    AttachmentService attachmentService;


    @RequestMapping(value = "/goods_class", method = RequestMethod.GET)
    public String index(@RequestParam(value = "p", required = false) Integer curPage,
                        Model model, HttpServletRequest request) {
        PageInfo<GoodsClass> page=goodsClassService.findGradeByGcParentId(0, curPage, 20);
        model.addAttribute("P_PAGE",page);
        return "goods/goods_class";
    }

    @RequestMapping(value = "/save", method = RequestMethod.GET)
    public String savePage(@RequestParam(value = "gc_parent_id", required = false) Integer gc_parent_id,
                           @RequestParam(value = "gc_id", required = false) Integer gc_id,
                           Model model, HttpServletRequest request) {
        List<GoodsType> goodsTypeList = goodsTypeService.findAll();
        List<GoodsClass> goodsClassList = goodsClassService.findTreeByGcParentId(0);
        if(gc_id!=null){
            GoodsClass goodsClass=goodsClassService.findOne(gc_id);
            model.addAttribute("P_GOODS_CLASS", goodsClass);
        }
        model.addAttribute("P_GOODS_TYPE_LIST", goodsTypeList);
        model.addAttribute("P_GOODS_CLASS_LIST", goodsClassList);
        model.addAttribute("P_PARENT_ID", gc_parent_id);
        return "goods/goods_class_add";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(GoodsClass goodsClass,
                       @RequestParam("pic") MultipartFile pic,//分类图片
                       Model model, HttpServletRequest request) {
        if(pic.getSize()!=0) {
            Assert.isTrue(pic.getSize() < 1000000, "请上传小于1M的图片！");
            try {
                String gcPic= attachmentService.upload(pic);
                goodsClass.setGcPic(gcPic);
            } catch (IOException e) {
                throw new PageException("保存图片错误！");
            }
        }

        String url = request.getRequestURI();
        goodsClassService.save(goodsClass);
        return Jump.get(url, "保存成功！");
    }

    @RequestMapping("/json_class")
    @ResponseBody
    public Object jsonClass(Integer gc_parent_id, String callback, HttpServletRequest request) {

        List<GoodsClass> goodsClassList = goodsClassService.findGradeByGcParentId(gc_parent_id);
        return JsonUtils.jsonp(goodsClassList, callback);
    }

    @RequestMapping("check_class_name")
    @ResponseBody
    public String checkClassName(String gcName,Integer gcParentId,
                                 Integer gc_id,
                                 HttpServletRequest request) {
        try{
            boolean is=goodsClassService.checkByIdNameParentId(gc_id, gcName, gcParentId);
            return com.goshop.common.pojo.ResponseStatus.get(is);
        }catch (Exception e){
            return com.goshop.common.pojo.ResponseStatus.get(false);
        }
    }

    @RequestMapping("/delete")
    public String delete(Integer  gc_id, HttpServletRequest request) {
        String url = request.getContextPath();
        goodsClassService.delete(gc_id);
        return Jump.get(url + "/goods_class/goods_class", "删除成功！");
    }
}
