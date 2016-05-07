package com.goshop.manager.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.common.attachment.AttachmentService;
import com.goshop.common.exception.PageException;
import com.goshop.common.pojo.ResponseStatus;
import com.goshop.common.utils.IDUtils;
import com.goshop.common.utils.JsonUtils;
import com.goshop.common.utils.ResponseMessageUtils;
import com.goshop.manager.i.ArticleLangService;
import com.goshop.manager.i.CmsArticleClassService;
import com.goshop.manager.model.ArticleLangInfoModel;
import com.goshop.manager.pojo.*;
import com.goshop.manager.utils.Jump;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/article_lang")
public class ArticleLangController {

    @Autowired
    ArticleLangService articleLangService;

    @Autowired
    CmsArticleClassService cmsArticleClassService;

    @Autowired
    AttachmentService attachmentService;

    @RequestMapping(value = "article_list",method = RequestMethod.GET)
    public String index(@RequestParam(value="p",required=false) Integer curPage,
                        String article_title,String article_publisher_name,
                        Integer article_state,String lang_type,
                        Model model, HttpServletRequest request) {
        List<CmsArticleClass> classList=cmsArticleClassService.findByParentId(null);
        model.addAttribute("P_ARTICLE_CLASS_LIST",classList);
        PageInfo<ArticleLangMain> page=null;
        if(StringUtils.hasText(article_title)||StringUtils.hasText(article_publisher_name)||StringUtils.hasText(lang_type)||article_state!=null){
            //page=articleLangService.query(curPage, 20, article_state, article_title, article_publisher_name,lang_type);
        }else{
            page=articleLangService.findAll(curPage, 20);
        }
        model.addAttribute("P_PAGE",page);
        return "cms/article_lang";
    }

   @RequestMapping(value = "add",method = RequestMethod.GET)
    public String addPage(Model model, HttpServletRequest request) {
        List<CmsArticleClass> classList =cmsArticleClassService.findTreeByParentId(null);
        model.addAttribute("P_CLASS_LIST",classList);
        return "cms/article_lang_add";
    }

    @RequestMapping("/article_pic_upload")
    @ResponseBody
    public void articlePicUpload(@RequestParam(value = "fileupload") MultipartFile fileUpload,
                                 HttpServletRequest request, HttpServletResponse response) {
        Map<String,Object> retMap = new HashMap<>();
        try {
            String path=attachmentService.upload(fileUpload);
            retMap.put("file_id", IDUtils.getUuid());
            retMap.put("file_name",path);
            retMap.put("file_path",path);
        } catch (IOException e) {
            e.printStackTrace();
            throw new PageException("文件上传错误！");
        }
        ResponseMessageUtils.textPlainResponse(response, JsonUtils.objectToJson(retMap));
    }

    @RequestMapping("/delete_image")
    @ResponseBody
    public Boolean articlePicUpload(String file_id,
                                 HttpServletRequest request, HttpServletResponse response) {
        try {
            attachmentService.delete(file_id);
        }catch (Exception e){
            return false;
        }
        return true;
    }

     @RequestMapping(value = "add",method = RequestMethod.POST)
    public String add(User user,ArticleLangMain articleLang,
                      ArticleLangInfoModel articleLangInfoModel,
                      Model model, HttpServletRequest request) {
         String url=request.getContextPath()+"/article_lang/article_list";
         //管理员投稿
         articleLang.setArticleState(1);
         articleLang.setArticlePublisherId(user.getId());
         articleLang.setArticlePublisherName(user.getLoginName());
         articleLang.setArticleImageAll(articleLangInfoModel.getFile_id());

         List<ArticleLangInfo> articleLangInfoList = new ArrayList<>();
         //中文
         ArticleLangInfo zh = new ArticleLangInfo();
         zh.setArticleTitle(articleLangInfoModel.getArticleTitle_zh());
         zh.setArticleAuthor(articleLangInfoModel.getArticleAuthor_zh());
         zh.setArticleContent(articleLangInfoModel.getArticleContent_zh());
         zh.setLangType("zh");
         //英文
         ArticleLangInfo en = new ArticleLangInfo();
         en.setArticleTitle(articleLangInfoModel.getArticleTitle_en());
         en.setArticleAuthor(articleLangInfoModel.getArticleAuthor_en());
         en.setArticleContent(articleLangInfoModel.getArticleContent_en());
         articleLangInfoList.add(zh);
         zh.setLangType("en");
         articleLangInfoList.add(en);

        articleLangService.save(articleLang,articleLangInfoList);
        return Jump.get(url, "保存成功！");
    }



    /*@RequestMapping("delete")
    public String delete(Long article_id,Model model, HttpServletRequest request) {
        String url=request.getContextPath()+"/article_lang/article_list";
        articleLangService.delete(article_id);
        return Jump.get(url, "删除成功！");
    }

    @RequestMapping(value = "edit",method = RequestMethod.GET)
    public String editPage(Long article_id,Model model, HttpServletRequest request) {
        List<CmsArticleClass> classList =cmsArticleClassService.findTreeByParentId(null);
        model.addAttribute("P_CLASS_LIST", classList);

        ArticleLangMain article=articleLangService.findOne(article_id);
        model.addAttribute("P_CMS_ARTICLE", article);
        return "cms/article_lang_add";
    }

    @RequestMapping(value = "edit",method = RequestMethod.POST)
    public String edit(ArticleLangMain article,Model model, HttpServletRequest request) {
        String url=request.getContextPath()+"/article_lang/article_list";
        articleLangService.update(article);
        return Jump.get(url, "保存成功！");
    }

    @RequestMapping("/inline_edit")
    @ResponseBody
    public String inline_edit(String op,String branch,Long id,String column,Integer value){
        if(!StringUtils.hasText(op)){
            return ResponseStatus.get(false);
        }
        if(op.equals("update_article_sort")){
            articleLangService.updateByArticleSort(id,value);
        }
        return ResponseStatus.get(true);
    }*/
}
