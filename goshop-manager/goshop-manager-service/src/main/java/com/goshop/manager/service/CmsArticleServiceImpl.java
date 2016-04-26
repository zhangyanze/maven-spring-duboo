package com.goshop.manager.service;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.CmsArticleService;
import com.goshop.manager.mapper.CmsArticleMapper;
import com.goshop.manager.pojo.CmsArticle;
import com.goshop.manager.pojo.CmsArticleWithBLOBs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("cmsArticleService")
public class CmsArticleServiceImpl implements CmsArticleService {

    @Autowired
    CmsArticleMapper cmsArticleMapper;

    @Override
    public PageInfo<CmsArticle> findBaseByArticleState(Integer curPage, Integer pageSize, Integer articleType) {
        //1、设置分页
        if(curPage==null){
            curPage=1;
        }
        if(pageSize==null){
            pageSize=20;
        }
        PageHelper.startPage(curPage, pageSize);
        List<CmsArticle> list = cmsArticleMapper.findBaseByArticleState(articleType);
        return new PageInfo<>(list);
    }

    @Override
    public int save(CmsArticleWithBLOBs cmsArticle) {
        return cmsArticleMapper.insertSelective(cmsArticle);
    }

    @Override
    public int delete(Long articleId) {
        return cmsArticleMapper.deleteByPrimaryKey(articleId);
    }
}
