package com.goshop.manager.mapper;

import com.goshop.manager.pojo.Store;

public interface StoreMapper {
    int deleteByPrimaryKey(String id);

    int insert(Store record);

    int insertSelective(Store record);

    Store selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Store record);

    int updateByPrimaryKeyWithBLOBs(Store record);

    int updateByPrimaryKey(Store record);
}