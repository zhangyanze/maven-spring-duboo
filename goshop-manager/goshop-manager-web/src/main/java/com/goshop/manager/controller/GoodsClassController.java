package com.goshop.manager.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.GoodsClassService;
import com.goshop.manager.i.GoodsTypeService;
import com.goshop.manager.pojo.GoodsClass;
import com.goshop.manager.pojo.GoodsType;
import com.goshop.manager.pojo.StoreGrade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/goods_class")
public class GoodsClassController {

    @Autowired
    GoodsTypeService goodsTypeService;

    @Autowired
    GoodsClassService goodsClassService;

    @RequestMapping(value="/goods_class",method = RequestMethod.GET)
    public String index(@RequestParam(value="p",required=false) Integer curPage,
                        Model model, HttpServletRequest request) {
       // PageInfo<StoreGrade> page=storeGradeService.findAll(curPage, 20);
        //model.addAttribute("P_PAGE",page);
        return "goods/goods_class";
    }

    @RequestMapping(value = "/save",method = RequestMethod.GET)
    public String savePage(Integer gcParentId,Model model, HttpServletRequest request) {
        List<GoodsType> goodsTypeList=goodsTypeService.findAll();
        List<GoodsClass>  goodsClassList=goodsClassService.findTreeByGcParentId(0);
        model.addAttribute("P_GOODS_TYPE_LIST",goodsTypeList);
        model.addAttribute("P_GOODS_CLASS_LIST",goodsClassList);
        return "goods/goods_class_add";
    }
}
