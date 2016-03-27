package com.goshop.manager.mapper;

import com.goshop.manager.pojo.StoreClass;

public interface StoreClassMapper {
    int deleteByPrimaryKey(String id);

    int insert(StoreClass record);

    int insertSelective(StoreClass record);

    StoreClass selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(StoreClass record);

    int updateByPrimaryKey(StoreClass record);
}