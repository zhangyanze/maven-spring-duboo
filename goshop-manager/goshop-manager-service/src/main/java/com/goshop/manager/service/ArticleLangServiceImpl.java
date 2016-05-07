package com.goshop.manager.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.ArticleLangService;
import com.goshop.manager.mapper.ArticleLangInfoMapper;
import com.goshop.manager.mapper.ArticleLangMainMapper;
import com.goshop.manager.pojo.ArticleLangInfo;
import com.goshop.manager.pojo.ArticleLangMain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("articleLangService")
public class ArticleLangServiceImpl implements ArticleLangService {

    @Autowired
    ArticleLangInfoMapper articleLangInfoMapper;

    @Autowired
    ArticleLangMainMapper articleLangMainMapper;


    @Override
    public PageInfo<ArticleLangMain> findAll(Integer curPage, Integer pageSize) {
        //1、设置分页
        if(curPage==null){
            curPage=1;
        }
        if(pageSize==null){
            pageSize=20;
        }
        PageHelper.startPage(curPage, pageSize);
        List<ArticleLangMain> list =articleLangMainMapper.findManyAll();
        return new PageInfo<>(list);
    }

    @Override
    public int save(ArticleLangMain articleLang, List<ArticleLangInfo> articleLangInfoList) {
        articleLangMainMapper.insertSelective(articleLang);
        for(ArticleLangInfo o:articleLangInfoList){
            o.setArticleId(articleLang.getArticleId());
            articleLangInfoMapper.insertSelective(o);
        }
        return 1;
    }
}
