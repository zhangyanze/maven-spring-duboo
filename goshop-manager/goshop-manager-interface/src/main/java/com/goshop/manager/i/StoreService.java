package com.goshop.manager.i;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.Store;
import com.goshop.manager.pojo.StoreJoin;
import com.goshop.manager.pojo.StoreWithBLOBs;
import com.goshop.manager.pojo.User;

/**
 * Created by Administrator on 2016/4/14.
 */
public interface StoreService {
    PageInfo<Store> findAll(Integer curPage, Integer size);

    /**
     * 申请开店
     * @param storeJoin
     * @return
     */
    int openStore(StoreJoin storeJoin);

    int save(StoreWithBLOBs store);

    Store getCurrentStore(User user);

    PageInfo<Store> find(Integer gradeId, String sellerName, String storeType, String storeName, Integer curPage, Integer size);

    Store findOne(Integer storeId);

    void update(StoreWithBLOBs store);

    Store findByMemberId(Long userId);
}
