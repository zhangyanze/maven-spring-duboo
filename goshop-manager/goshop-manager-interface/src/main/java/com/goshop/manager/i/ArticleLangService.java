package com.goshop.manager.i;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.ArticleLangInfo;
import com.goshop.manager.pojo.ArticleLangMain;

import java.util.List;

/**
 * Created by Administrator on 2016/5/7.
 */
public interface ArticleLangService {

     PageInfo<ArticleLangMain> findManyAll(Integer curPage, Integer pageSize);

     PageInfo<ArticleLangMain> queryMany(Integer curPage, Integer pageSize, String articleTitle, String articlePublisherName, Integer articleState, Long articleClassId);

     PageInfo<ArticleLangMain> findManyByArticleClassId(Integer curPage, Integer pageSize, Long articleClassId);

     int save(ArticleLangMain articleLang, List<ArticleLangInfo> articleLangInfoList);

     ArticleLangMain findManyOne(Long articleId);

     int update(ArticleLangMain articleLang, List<ArticleLangInfo> articleLangInfoList);

     ArticleLangMain findMainOne(Long articleId);

     int update(ArticleLangMain articleLangMain);

     int delete(Long articleId);

     int updateByArticleSort(Long articleId, Integer articleSort);

}
