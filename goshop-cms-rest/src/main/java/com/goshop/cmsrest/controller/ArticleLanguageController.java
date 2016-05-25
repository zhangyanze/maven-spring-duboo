package com.goshop.cmsrest.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.common.utils.JsonUtils;
import com.goshop.common.utils.RequestUtils;
import com.goshop.manager.i.ArticleLangService;
import com.goshop.manager.pojo.ArticleLangInfo;
import com.goshop.manager.pojo.ArticleLangMain;
import com.goshop.manager.pojo.CmsArticleClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
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
    public Object query(Model model,@RequestParam(value="cid",required=false) Long class_id,
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
    public Object imageQuery(Model model, @RequestParam(value="cid",required=false) Long class_id,
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

    @RequestMapping("/page")
    @ResponseBody
    public Object page(Model model,
                       Long id,
                       String callback,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        ArticleLangMain articleLangMain=articleLangService.findManyOne(id);
        Assert.notNull(articleLangMain,"此文章已不存在！");
        ArticleLangInfo info=articleLangMain.getArticleLangInfoList().get(0);
        String content=info.getArticleContent().replaceAll("\\/admin\\/att", "http://211.149.161.219/admin/att");
        info.setArticleContent(content);
        return JsonUtils.jsonp(articleLangMain, callback);
    }
}
