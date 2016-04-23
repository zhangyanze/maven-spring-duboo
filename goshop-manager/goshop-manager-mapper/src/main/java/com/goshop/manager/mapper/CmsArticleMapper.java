package com.goshop.manager.mapper;

import com.goshop.manager.pojo.CmsArticle;
import com.goshop.manager.pojo.CmsArticleClass;

import java.util.List;

public interface CmsArticleMapper {
    int deleteByPrimaryKey(Long articleId);

    int insert(CmsArticle record);

    int insertSelective(CmsArticle record);

    CmsArticle selectByPrimaryKey(Long articleId);

    int updateByPrimaryKeySelective(CmsArticle record);

    int updateByPrimaryKeyWithBLOBs(CmsArticle record);

    int updateByPrimaryKey(CmsArticle record);

    List<CmsArticleClass> findByArticleType(Integer articleType);
}