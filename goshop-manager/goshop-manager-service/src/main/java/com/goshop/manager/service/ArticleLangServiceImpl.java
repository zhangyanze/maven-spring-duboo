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
    public PageInfo<ArticleLangMain> findManyAll(Integer curPage, Integer pageSize) {
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
    public PageInfo<ArticleLangMain> queryMany(Integer curPage, Integer pageSize, String articleTitle, String articlePublisherName, Integer articleState, Long articleClassId) {
        //1、设置分页
        if(curPage==null){
            curPage=1;
        }
        if(pageSize==null){
            pageSize=20;
        }
        PageHelper.startPage(curPage, pageSize);
        List<ArticleLangMain> list =articleLangMainMapper.queryMany(articleTitle,articlePublisherName,articleState,articleClassId);
        return new PageInfo<>(list);
    }

    @Override
    public PageInfo<ArticleLangMain> findManyByArticleClassId(Integer curPage, Integer pageSize, Long articleClassId) {
        //1、设置分页
        if (curPage == null) {
            curPage = 1;
        }
        if (pageSize == null) {
            pageSize = 20;
        }
        PageHelper.startPage(curPage, pageSize);
        List<ArticleLangMain> list = articleLangMainMapper.findManyByArticleClassId(articleClassId);
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

    @Override
    public ArticleLangMain findManyOne(Long articleId) {
        return articleLangMainMapper.findManyOne(articleId);
    }

    @Override
    public int update(ArticleLangMain articleLang, List<ArticleLangInfo> articleLangInfoList) {
        articleLangMainMapper.updateByPrimaryKeySelective(articleLang);
        for(ArticleLangInfo o:articleLangInfoList){
            articleLangInfoMapper.updateByPrimaryKeySelective(o);
        }
        return 1;
    }

    @Override
    public ArticleLangMain findMainOne(Long articleId) {
        return articleLangMainMapper.selectByPrimaryKey(articleId);
    }

    @Override
    public int update(ArticleLangMain articleLangMain) {
        return articleLangMainMapper.updateByPrimaryKeySelective(articleLangMain);
    }

    @Override
    public int delete(Long articleId) {
        articleLangInfoMapper.deleteByArticleId(articleId);
        return articleLangMainMapper.deleteByPrimaryKey(articleId);
    }

    @Override
    public int updateByArticleSort(Long articleId, Integer articleSort) {
        return articleLangMainMapper.updateByArticleSort(articleId,articleSort);
    }
}
