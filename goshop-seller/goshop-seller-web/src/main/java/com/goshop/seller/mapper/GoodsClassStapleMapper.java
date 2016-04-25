package com.goshop.seller.mapper;

import com.goshop.seller.pojo.GoodsClassStaple;

import java.util.List;

public interface GoodsClassStapleMapper {
    int deleteByPrimaryKey(Integer stapleId);

    int insert(GoodsClassStaple record);

    int insertSelective(GoodsClassStaple record);

    GoodsClassStaple selectByPrimaryKey(Integer stapleId);

    int updateByPrimaryKeySelective(GoodsClassStaple record);

    int updateByPrimaryKey(GoodsClassStaple record);

    List<GoodsClassStaple> findByMemberId(Long memberId);
}