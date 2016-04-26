package com.goshop.seller.service;

import com.goshop.manager.pojo.GoodsClass;
import com.goshop.manager.pojo.User;
import com.goshop.seller.modle.JsonGoodsClass;
import com.goshop.seller.pojo.GoodsClassStaple;

import java.util.List;

/**
 * Created by Administrator on 2016/4/25.
 */
public interface GoodsClassStapleService {
    List<GoodsClassStaple> findByMemberId(Long memberId);

    GoodsClassStaple findOne(Integer id);

    int checkSaveStaple(User user,GoodsClass goodsClass);

    int delete(Integer stapleId);

    JsonGoodsClass selectGoodsClassStaple(Integer stapleId);
}
