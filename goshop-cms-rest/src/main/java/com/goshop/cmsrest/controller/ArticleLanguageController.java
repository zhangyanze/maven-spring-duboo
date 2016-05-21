package com.goshop.cmsrest.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.common.utils.JsonUtils;
import com.goshop.manager.i.ArticleLangService;
import com.goshop.manager.pojo.ArticleLangMain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

@Controller
@RequestMapping("/article_lang")
public class ArticleLanguageController {

    @Autowired
    ArticleLangService articleLangService;

    @RequestMapping("/query")
    @ResponseBody
    public Object query(Model model,
                           Long class_id,
                           @RequestParam(value="p",required=false) Integer curPage,
                           @RequestParam(value="p_year",required=false) String year,
                            String callback,
                            HttpServletRequest request,
                           HttpServletResponse response) {
        Locale locale = new SessionLocaleResolver().resolveLocale(request);
        String lang=locale.getLanguage();
        PageInfo<ArticleLangMain> page=articleLangService.findRetrenchPublishManyByArticleClassId(curPage, 6, class_id, year,lang);
        return JsonUtils.jsonp(page, callback);
    }

    @RequestMapping("/image_query")
    @ResponseBody
    public Object imageQuery(Model model,
                        Long class_id,
                        @RequestParam(value="p",required=false) Integer curPage,
                        @RequestParam(value="p_year",required=false) String year,
                        String callback,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        Locale locale = new SessionLocaleResolver().resolveLocale(request);
        String lang=locale.getLanguage();
        PageInfo<ArticleLangMain> page=articleLangService.findRetrenchImagePublishManyByArticleClassId(curPage, 6, class_id, year,lang);
        return JsonUtils.jsonp(page, callback);
    }
}
