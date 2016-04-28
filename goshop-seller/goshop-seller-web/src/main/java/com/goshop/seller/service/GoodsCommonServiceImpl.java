package com.goshop.seller.service;

import com.goshop.seller.mapper.GoodsCommonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodsCommonServiceImpl implements GoodsCommonService {

    @Autowired
    GoodsCommonMapper goodsCommonMapper;
}
