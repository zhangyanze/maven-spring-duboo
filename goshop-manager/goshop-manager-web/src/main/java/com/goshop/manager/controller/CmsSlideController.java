package com.goshop.manager.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.common.attachment.AttachmentService;
import com.goshop.common.exception.PageException;
import com.goshop.common.utils.IDUtils;
import com.goshop.common.utils.ResponseMessageUtils;
import com.goshop.manager.i.CmsSlideService;
import com.goshop.manager.pojo.CmsArticle;
import com.goshop.manager.pojo.CmsSlide;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cms_slide")
public class CmsSlideController {

    @Autowired
    CmsSlideService cmsSlideService;

    @Autowired
    AttachmentService attachmentService;

    @RequestMapping("/index")
    public String index(Model model, HttpServletRequest request) {
        List<CmsSlide> list=cmsSlideService.findAll();
        model.addAttribute("P_CSM_SLIDE_LIST",list);
        return "cms/article_slide";
    }

    @RequestMapping("/del")
    @ResponseBody
    public Object del(Integer file_id, HttpServletRequest request) {
        if(file_id!=null) {
            cmsSlideService.delete(file_id);
        }
        Map<String,String> map = new HashMap<>();
        map.put("succeed", "删除成功！");
        return map;
    }

    @RequestMapping("/save_image")
    @ResponseBody
    public CmsSlide saveImage(Integer file_id,Integer id,
                         @RequestParam(value = "file") MultipartFile file,
                         HttpServletRequest request) {
        String slidePath="";
        try {
            slidePath=attachmentService.upload(file);
        } catch (IOException e) {
            e.printStackTrace();
            throw new PageException("文件上传错误！");
        }
        CmsSlide cmsSlide=null;
        if(file_id==null) {
            cmsSlide= cmsSlideService.save(id,slidePath);
        }else{
            cmsSlide=cmsSlideService.update(file_id,id,slidePath);
        }
        return cmsSlide;
    }

    @RequestMapping("/save")
    public String save(Model model,
                    @RequestParam(value = "image_url") String[] imageUrl,
                    @RequestParam(value = "ids") Integer[] ids,
                    HttpServletRequest request, HttpServletResponse response) {

        String url = request.getContextPath() + "/cms_slide/index";
        String name = "保存成功";
        try{
            cmsSlideService.update(ids, imageUrl);
        }catch (Exception e){
            name = "保存失败";
        }
        return Jump.get(url, name);
    }
}
