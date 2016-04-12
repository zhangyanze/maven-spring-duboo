package com.goshop.portal.service;

import com.goshop.manager.pojo.StoreGoodsClass;

import java.util.List;

/**
 * Created by Administrator on 2016/4/12.
 */
public interface StoreGoodsClassService {
    List<StoreGoodsClass> findByStcParentId(Integer id);
}
