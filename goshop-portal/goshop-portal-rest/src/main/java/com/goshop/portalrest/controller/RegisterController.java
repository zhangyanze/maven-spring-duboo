package com.goshop.portalrest.controller;

import com.goshop.common.utils.JsonUtils;
import com.goshop.portal.i.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/3/19.
 */
@Controller
@RequestMapping(value = "/register")
public class RegisterController {

    @Autowired
    MemberService memberService;

    @RequestMapping("/check/{type}")
    @ResponseBody
    public Object check(@PathVariable String type,String value,String callback,HttpServletRequest request){
        Boolean isCheck = false;
        switch (type){
           case  "name":
               isCheck=memberService.checkLoginName(value);
               break;
           case  "email":
               isCheck=memberService.checkEmail(value);
               break;
           default:

        }
        return JsonUtils.jsonp(isCheck, callback);
    }
}
