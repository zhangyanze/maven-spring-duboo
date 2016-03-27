package com.goshop.portal.controller;

import com.goshop.common.context.RedirectAttributesEx;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value =  "/exc")
public class ExceptionController {

    @RequestMapping(value =  "/jump")
    public String Message(String message,
                          String returnUrl,
            Model model,HttpServletRequest request) {
        if(StringUtils.hasText(message)){
            model.addAttribute("P_MESSAGE", message);
        }else {
            RedirectAttributesEx rae = new RedirectAttributesEx(request);
            model.addAttribute("P_MESSAGE", rae.getAttribute("ERROR_MESSAGE"));
        }
        model.addAttribute("P_RETURN_URL", returnUrl);
        return "exception_message";
    }
}
