package com.goshop.seller.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.AlbumClass;
import com.goshop.manager.pojo.GoodsClass;
import com.goshop.manager.pojo.User;
import com.goshop.seller.pojo.GoodsClassStaple;
import com.goshop.seller.service.AlbumClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping(value =  "/album")
public class AlbumController {

    @Autowired
    AlbumClassService albumClassService;

    @RequestMapping("/space")
    public String space(@RequestParam(value="p",required=false) Integer curPage,
                        @RequestParam(value = "sort",required=false) Integer sort,
                        Model model,
                        User user,
                      HttpServletRequest request,
                      HttpServletResponse response) {

        PageInfo<AlbumClass> page=albumClassService.findByStoreId(curPage, 20, user.getId(),sort);
        model.addAttribute("P_PAGE",page);
        return "goods/album_space";
    }
}
