package com.goshop.portal.controller;

import com.goshop.common.context.ValidationCodeServlet;
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
import javax.servlet.http.HttpSession;

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
                       String password_confirm,
                       HttpServletRequest request) {
        if(TokenUtils.getInstance().verifyToken(request)){
            throw new PageException("你已提交了用户数据！");
        }

        if(!(password_confirm!=null&&password_confirm.equals(member.getPassword()))){
            throw new PageException("两次密码不同！");
        }

        if(ValidationCodeServlet.isCaptcha(request)){
            throw new PageException("验证码错误！");
        }

       int num= registerService.saveMember(member);
        return null;
    }

    @RequestMapping("/check/captcha")
    @ResponseBody
    public Boolean captcha(HttpServletRequest request){
        return ValidationCodeServlet.isCaptcha(request);
    }


}
