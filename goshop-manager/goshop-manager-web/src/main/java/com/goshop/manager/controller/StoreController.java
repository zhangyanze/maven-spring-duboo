package com.goshop.manager.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.StoreService;
import com.goshop.manager.pojo.Store;
import com.goshop.manager.pojo.StoreGrade;
import com.goshop.manager.pojo.StoreJoin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/store")
public class StoreController {

    @Autowired
    StoreService storeService;

    @RequestMapping(value="/store",method = RequestMethod.GET)
    public String store(@RequestParam(value="p",required=false) Integer curPage,
                        Model model, HttpServletRequest request) {
        //PageInfo<StoreGrade> page=storeService.findAll(curPage, 20);
        //model.addAttribute("P_PAGE",page);
        return "store/store";
    }

}
