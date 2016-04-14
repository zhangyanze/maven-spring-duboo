package com.goshop.manager.mapper;

import com.goshop.manager.pojo.StoreJoin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StoreJoinMapper {
    int deleteByPrimaryKey(Long memberId);

    int insert(StoreJoin record);

    int insertSelective(StoreJoin record);

    StoreJoin selectByPrimaryKey(Long memberId);

    int updateByPrimaryKeySelective(StoreJoin record);

    int updateByPrimaryKey(StoreJoin record);

    List<StoreJoin> findBySellerName(@Param("sellerName")String sellerName);

    List<StoreJoin> findByStoreName(@Param("storeName")String storeName);

    List<StoreJoin> findAll();
}