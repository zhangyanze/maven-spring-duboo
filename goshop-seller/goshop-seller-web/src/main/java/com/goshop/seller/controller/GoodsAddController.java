package com.goshop.seller.controller;

import com.goshop.manager.i.GoodsClassService;
import com.goshop.manager.pojo.GoodsClass;
import com.goshop.manager.pojo.User;
import com.goshop.seller.pojo.GoodsClassStaple;
import com.goshop.seller.service.GoodsClassStapleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
}
