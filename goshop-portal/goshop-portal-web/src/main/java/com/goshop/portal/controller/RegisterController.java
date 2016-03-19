package com.goshop.portal.controller;

import com.goshop.common.exception.PageException;
import com.goshop.common.utils.TokenUtils;
import com.goshop.manager.pojo.Member;
import com.goshop.portal.i.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/register")
public class RegisterController {

    @Autowired
    RegisterService registerService;


    @RequestMapping
    public String register(HttpServletRequest request) {
       TokenUtils.getInstance().saveToken(request);
        return "register";
    }

    @RequestMapping("save")
    @ResponseBody
    public Object save(Member member,
                       HttpServletRequest request) {
        if(TokenUtils.getInstance().verifyToken(request)){
            throw new PageException("你已提交了用户数据！");
        }

       int num= registerService.saveMember(member);
        return null;
    }
}
