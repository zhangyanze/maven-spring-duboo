package com.goshop.manager.mapper;

import com.goshop.manager.pojo.GoodsClass;

import java.util.List;

public interface GoodsClassMapper {
    int deleteByPrimaryKey(Integer gcId);

    int insert(GoodsClass record);

    int insertSelective(GoodsClass record);

    GoodsClass selectByPrimaryKey(Integer gcId);

    int updateByPrimaryKeySelective(GoodsClass record);

    int updateByPrimaryKey(GoodsClass record);

    List<GoodsClass> findTreeByGcParentId(Integer gcParentId);
}