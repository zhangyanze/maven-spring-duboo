package com.goshop.manager.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.CmsArticleService;
import com.goshop.manager.pojo.CmsArticleClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/cms_article")
public class CmsArticleController {

    @Autowired
    CmsArticleService cmsArticleService;

    @RequestMapping(value = "cms_article_list",method = RequestMethod.GET)
    public String index(@RequestParam(value="p",required=false) Integer curPage,
                        Model model, HttpServletRequest request) {
        PageInfo<CmsArticleClass> page=cmsArticleService.findByArticleType(curPage, 20, CmsArticleService.TYPE_PUBLISH);
        model.addAttribute("P_PAGE",page);
        return "cms/article";
    }
}
