package com.goshop.manager.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.CmsArticleClassService;
import com.goshop.manager.pojo.CmsArticleClass;
import com.goshop.manager.pojo.StoreClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/cms_article_class")
public class CmsArticleClassController {

    @Autowired
    CmsArticleClassService cmsArticleClassService;

    @RequestMapping("index")
    public String index(@RequestParam(value="p",required=false) Integer curPage,
                        Model model, HttpServletRequest request) {
        PageInfo<CmsArticleClass> page=cmsArticleClassService.findGradeByParentId(curPage, 20, null);
        model.addAttribute("P_PAGE",page);
        return "cms/article_class";
    }

    @RequestMapping(value = "/save",method = RequestMethod.GET)
    public String savePage(Long sc_parent_id,Model model, HttpServletRequest request) {
        List<CmsArticleClass> list=cmsArticleClassService.findByParentId(null);
        model.addAttribute("P_CLASS_LIST", list);
        model.addAttribute("P_PARENT_ID", sc_parent_id);
        return "store/store_class_add";
    }
}
