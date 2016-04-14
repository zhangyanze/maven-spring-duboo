package com.goshop.manager.mapper;

import com.goshop.manager.pojo.Store;
import com.goshop.manager.pojo.StoreWithBLOBs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StoreMapper {
    int deleteByPrimaryKey(Integer storeId);

    int insert(StoreWithBLOBs record);

    int insertSelective(StoreWithBLOBs record);

    StoreWithBLOBs selectByPrimaryKey(Integer storeId);

    int updateByPrimaryKeySelective(StoreWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(StoreWithBLOBs record);

    int updateByPrimaryKey(Store record);

    Store findByMemberId(@Param("memberId")Long memberId);

    List<Store> findAll();
}