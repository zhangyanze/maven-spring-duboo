package com.goshop.manager.mapper;

import com.goshop.manager.pojo.CmsArticleClass;

import java.util.List;

public interface CmsArticleClassMapper {
    int deleteByPrimaryKey(Long classId);

    int insert(CmsArticleClass record);

    int insertSelective(CmsArticleClass record);

    CmsArticleClass selectByPrimaryKey(Long classId);

    int updateByPrimaryKeySelective(CmsArticleClass record);

    int updateByPrimaryKey(CmsArticleClass record);

    List<CmsArticleClass> findGradeByParentId(Long parentId);

    List<CmsArticleClass> findByParentId(Long parentId);
}