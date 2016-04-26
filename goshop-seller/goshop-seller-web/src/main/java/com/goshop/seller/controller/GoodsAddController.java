package com.goshop.seller.controller;

import com.goshop.common.pojo.ResponseStatus;
import com.goshop.common.utils.ResponseMessageUtils;
import com.goshop.manager.i.GoodsClassService;
import com.goshop.manager.pojo.GoodsClass;
import com.goshop.manager.pojo.User;
import com.goshop.seller.modle.JsonGoodsClass;
import com.goshop.seller.pojo.GoodsClassStaple;
import com.goshop.seller.service.GoodsClassStapleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value =  "/goods_add")
public class GoodsAddController {

    @Autowired
    GoodsClassStapleService goodsClassStapleService;

    @Autowired
    GoodsClassService goodsClassService;

    @RequestMapping("/step_one")
    public String one(Model model,
                      User user,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        List<GoodsClassStaple> goodsClassStapleList=goodsClassStapleService.findByMemberId(user.getId());
        model.addAttribute("P_GOODS_CLASS_STAPLE_LIST", goodsClassStapleList);
        List<GoodsClass> goodsClassList= goodsClassService.findByGcParentId(0);
        model.addAttribute("P_GOODS_CLASS_LIST", goodsClassList);
        return "goods/good_add_step_one";
    }

    @RequestMapping("/class")
    public
    @ResponseBody
    List getClass(
            @RequestParam("gc_id") Integer id,
            @RequestParam("deep") String deep,
            HttpServletRequest request,
            HttpServletResponse response) {

        List<GoodsClass> goodsClassList = goodsClassService.findByGcParentId(id);
        return goodsClassList;
    }

    @RequestMapping("/class_staple")
    public
    @ResponseBody
    Object getClassStaple(
            @RequestParam("stapleid") Integer stapleId,
            HttpServletRequest request,
            HttpServletResponse response) {

        JsonGoodsClass json = goodsClassStapleService.selectGoodsClassStaple(stapleId);
        return json;
    }

    @RequestMapping("/staple_del")
    public
    @ResponseBody
    Object stapleDel(
            @RequestParam("stapleid") Integer stapleId,
            HttpServletRequest request,
            HttpServletResponse response) {
        goodsClassStapleService.delete(stapleId);
        return ResponseStatus.get(true);
    }

    @RequestMapping("/step_two")
    public String two(Model model,
                      User user,
                      @RequestParam("class_id") Integer classId,
                      @RequestParam("t_id") String tId,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        //判断分类是否3级
        GoodsClass goodsClass = goodsClassService.findOne(classId);
        //检查并保存常用分类
        goodsClassStapleService.checkSaveStaple(user,goodsClass);

        return "goods/good_add_step_two";
    }
}
