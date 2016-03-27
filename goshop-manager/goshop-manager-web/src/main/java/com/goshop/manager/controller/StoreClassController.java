package com.goshop.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store_class")
public class StoreClassController {

    @RequestMapping("/store_class")
    public String index() {

        return "store/store_class";
    }
}
