package com.goshop.manager.mapper;

import com.goshop.manager.pojo.StoreJoin;

public interface StoreJoinMapper {
    int deleteByPrimaryKey(Long memberId);

    int insert(StoreJoin record);

    int insertSelective(StoreJoin record);

    StoreJoin selectByPrimaryKey(Long memberId);

    int updateByPrimaryKeySelective(StoreJoin record);

    int updateByPrimaryKey(StoreJoin record);
}