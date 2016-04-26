package com.goshop.manager.mapper;

import com.goshop.manager.pojo.CmsArticle;
import com.goshop.manager.pojo.CmsArticleWithBLOBs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CmsArticleMapper {
    int deleteByPrimaryKey(Long articleId);

    int insert(CmsArticleWithBLOBs record);

    int insertSelective(CmsArticleWithBLOBs record);

    CmsArticleWithBLOBs selectByPrimaryKey(Long articleId);

    int updateByPrimaryKeySelective(CmsArticleWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CmsArticleWithBLOBs record);

    int updateByPrimaryKey(CmsArticle record);

    List<CmsArticle> findBaseByArticleState(@Param("articleState")Integer articleState);
}