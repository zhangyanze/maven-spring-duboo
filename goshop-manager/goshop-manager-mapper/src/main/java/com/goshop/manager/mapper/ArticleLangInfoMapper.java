package com.goshop.manager.mapper;

import com.goshop.manager.pojo.ArticleLangInfo;

public interface ArticleLangInfoMapper {
    int deleteByPrimaryKey(Long articleInfoId);

    int insert(ArticleLangInfo record);

    int insertSelective(ArticleLangInfo record);

    ArticleLangInfo selectByPrimaryKey(Long articleInfoId);

    int updateByPrimaryKeySelective(ArticleLangInfo record);

    int updateByPrimaryKeyWithBLOBs(ArticleLangInfo record);

    int updateByPrimaryKey(ArticleLangInfo record);
}