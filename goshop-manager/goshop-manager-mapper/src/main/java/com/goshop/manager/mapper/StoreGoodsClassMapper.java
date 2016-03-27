package com.goshop.manager.mapper;

import com.goshop.manager.pojo.StoreGoodsClass;

public interface StoreGoodsClassMapper {
    int deleteByPrimaryKey(String id);

    int insert(StoreGoodsClass record);

    int insertSelective(StoreGoodsClass record);

    StoreGoodsClass selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(StoreGoodsClass record);

    int updateByPrimaryKey(StoreGoodsClass record);
}