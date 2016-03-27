package com.goshop.manager.mapper;

import com.goshop.manager.pojo.StoreGrade;

public interface StoreGradeMapper {
    int deleteByPrimaryKey(String id);

    int insert(StoreGrade record);

    int insertSelective(StoreGrade record);

    StoreGrade selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(StoreGrade record);

    int updateByPrimaryKey(StoreGrade record);
}