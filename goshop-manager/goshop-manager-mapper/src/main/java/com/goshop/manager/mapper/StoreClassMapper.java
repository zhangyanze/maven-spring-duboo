package com.goshop.manager.mapper;

import com.goshop.manager.pojo.StoreClass;

import java.util.List;

public interface StoreClassMapper {
    int deleteByPrimaryKey(String id);

    int insert(StoreClass record);

    int insertSelective(StoreClass record);

    StoreClass selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(StoreClass record);

    int updateByPrimaryKey(StoreClass record);

    List findAll();
}