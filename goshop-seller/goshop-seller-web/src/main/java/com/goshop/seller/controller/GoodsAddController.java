package com.goshop.seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value =  "/goods_add")
public class GoodsAddController {

    @RequestMapping("/step_one")
    public String one(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {

        return "goods_add/step_one";
    }
}
