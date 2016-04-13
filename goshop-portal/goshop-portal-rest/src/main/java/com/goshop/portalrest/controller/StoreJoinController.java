package com.goshop.portalrest.controller;

import com.goshop.common.utils.JsonUtils;
import com.goshop.manager.pojo.User;
import com.goshop.portal.i.StoreJoinService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/store_join")
public class StoreJoinController {

    @Autowired
    StoreJoinService storeJoinService;

    @RequestMapping("/verification/sellerName")
    public
    @ResponseBody
    Object verificationSellerName(@RequestParam(value = "sellerName") String sellerName,
                                  @RequestParam(value = "callback",required = false) String callback,
                                  User user,
                                  HttpServletRequest request,
                                   HttpServletResponse response) {
        boolean is= storeJoinService.verificationSellerName(sellerName,user.getId());
        return JsonUtils.jsonp(is,callback);
    }

    @RequestMapping("/verification/storeName")
    public
    @ResponseBody
    Object verificationStoreName(@RequestParam(value = "storeName") String storeName,
                                 @RequestParam(value = "callback",required = false) String callback,
                                 User user,
                                 HttpServletRequest request,
                                  HttpServletResponse response) {
        boolean is=  storeJoinService.verificationStoreName(storeName,user.getId());
        return JsonUtils.jsonp(is,callback);
    }
}
