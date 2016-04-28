package com.goshop.seller.mapper;

import com.goshop.seller.pojo.GoodsCommon;
import com.goshop.seller.pojo.GoodsCommonWithBLOBs;

public interface GoodsCommonMapper {
    int deleteByPrimaryKey(Integer goodsCommonid);

    int insert(GoodsCommonWithBLOBs record);

    int insertSelective(GoodsCommonWithBLOBs record);

    GoodsCommonWithBLOBs selectByPrimaryKey(Integer goodsCommonid);

    int updateByPrimaryKeySelective(GoodsCommonWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(GoodsCommonWithBLOBs record);

    int updateByPrimaryKey(GoodsCommon record);
}