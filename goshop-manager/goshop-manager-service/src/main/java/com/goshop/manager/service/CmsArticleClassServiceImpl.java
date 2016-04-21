package com.goshop.manager.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.CmsArticleClassService;
import com.goshop.manager.mapper.CmsArticleClassMapper;
import com.goshop.manager.pojo.CmsArticleClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("cmsArticleClassService")
public class CmsArticleClassServiceImpl implements CmsArticleClassService{

    @Autowired
    CmsArticleClassMapper cmsArticleClassMapper;

    @Override
    public PageInfo<CmsArticleClass> findGradeByParentId(Integer curPage, Integer pageSize, Long parentId) {
        //1、设置分页
        if(curPage==null){
            curPage=1;
        }
        if(pageSize==null){
            pageSize=20;
        }
        PageHelper.startPage(curPage, pageSize);
        //2、查询结果
        List<CmsArticleClass> list=cmsArticleClassMapper.findGradeByParentId(parentId);
        //3、取分页后结果
        PageInfo<CmsArticleClass> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public List<CmsArticleClass> findByParentId(Long parentId) {
        return cmsArticleClassMapper.findByParentId(parentId);
    }
}
