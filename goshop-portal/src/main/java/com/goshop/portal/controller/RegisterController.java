package com.goshop.portal.controller;

import com.goshop.common.exception.PageException;
import com.goshop.common.utils.TokenUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/register")
public class RegisterController {


    @RequestMapping
    public String register(HttpServletRequest request) {
       TokenUtils.getInstance().saveToken(request);
        return "register";
    }

    @RequestMapping("save")
    @ResponseBody
    public Object save(HttpServletRequest request) {
        if(TokenUtils.getInstance().verifyToken(request)){
            throw new PageException("你已提交了用户数据！");
        }
        return null;
    }
}
