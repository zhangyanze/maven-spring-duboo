package com.goshop.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value =  "/exc")
public class ExceptionController {

    @RequestMapping(value =  "/jump")
    public String Message(String message,
                          String returnUrl,
            Model model,HttpServletRequest request) {
        model.addAttribute("P_MESSAGE",message);
        model.addAttribute("P_RETURN_URL",returnUrl);
        return "exception_message";
    }
}
