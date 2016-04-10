package com.goshop.manager.controller;

import com.goshop.common.context.MessageInfo;
import com.goshop.common.context.ThreadLocalMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value =  "/msg")
public class MessageController {

    @RequestMapping
    public String Message(String message,
                          String returnUrl,
            Model model,HttpServletRequest request) {
        if(StringUtils.hasText(message)){
            model.addAttribute("P_MESSAGE", message);
        }else {
            MessageInfo m = ThreadLocalMessage.get();
            model.addAttribute("P_MESSAGE", m.getMessage());
            model.addAttribute("P_RETURN_URL", m.getReturnUrl());
        }
        if(StringUtils.hasText(returnUrl)) {
            model.addAttribute("P_RETURN_URL", returnUrl);
        }
        return "message";
    }
}
