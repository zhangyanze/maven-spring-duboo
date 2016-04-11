package com.goshop.manager.mapper;

import com.goshop.manager.pojo.StoreGoodsClass;

public interface StoreGoodsClassMapper {
    int deleteByPrimaryKey(Integer stcId);

    int insert(StoreGoodsClass record);

    int insertSelective(StoreGoodsClass record);

    StoreGoodsClass selectByPrimaryKey(Integer stcId);

    int updateByPrimaryKeySelective(StoreGoodsClass record);

    int updateByPrimaryKey(StoreGoodsClass record);
}