package com.goshop.seller.service;

import com.goshop.seller.pojo.GoodsClassStaple;

import java.util.List;

/**
 * Created by Administrator on 2016/4/25.
 */
public interface GoodsClassStapleService {
    List<GoodsClassStaple> findByMemberId(Long memberId);

    GoodsClassStaple findOne(Integer id);
}
