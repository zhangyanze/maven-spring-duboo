package com.goshop.seller.service;

import com.goshop.seller.mapper.GoodsClassStapleMapper;
import com.goshop.seller.pojo.GoodsClassStaple;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsClassStapleServiceImpl implements GoodsClassStapleService {

    @Autowired
    GoodsClassStapleMapper goodsClassStapleMapper;

    @Override
    public List<GoodsClassStaple> findByMemberId(Long memberId) {
        return goodsClassStapleMapper.findByMemberId(memberId) ;
    }

    @Override
    public GoodsClassStaple findOne(Integer id) {
        return goodsClassStapleMapper.selectByPrimaryKey(id);
    }
}
