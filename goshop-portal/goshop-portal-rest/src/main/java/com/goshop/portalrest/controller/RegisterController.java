package com.goshop.portalrest.controller;

import com.goshop.common.pojo.GoShopResult;
import com.goshop.portal.i.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2016/3/19.
 */
@Controller
@RequestMapping(value = "/register")
public class RegisterController {

    @Autowired
    RegisterService registerService;

    @RequestMapping("/check/{type}")
    @ResponseBody
    public Object check(@PathVariable String type,String value,String callback,HttpServletRequest request){
        Boolean isCheck = false;
        switch (type){
           case  "name":
               isCheck=registerService.checkLoginName(value);
               break;
           case  "email":
               isCheck=registerService.checkEmail(value);
               break;
           default:

        }
        MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(isCheck);
        mappingJacksonValue.setJsonpFunction(callback);
        return mappingJacksonValue;
    }
}
