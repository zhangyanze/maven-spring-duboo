package com.goshop.manager.mapper;

import com.goshop.manager.pojo.ArticleLangMain;

import java.util.List;

public interface ArticleLangMainMapper {
    int deleteByPrimaryKey(Long articleId);

    int insert(ArticleLangMain record);

    int insertSelective(ArticleLangMain record);

    ArticleLangMain selectByPrimaryKey(Long articleId);

    int updateByPrimaryKeySelective(ArticleLangMain record);

    int updateByPrimaryKeyWithBLOBs(ArticleLangMain record);

    int updateByPrimaryKey(ArticleLangMain record);

    /**
     * 查询全部主从表信息
     * @return
     */
    List<ArticleLangMain> findManyAll();
}