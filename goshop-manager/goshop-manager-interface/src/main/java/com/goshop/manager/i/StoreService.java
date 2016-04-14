package com.goshop.manager.i;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.Store;

/**
 * Created by Administrator on 2016/4/14.
 */
public interface StoreService {
    PageInfo<Store> findAll(Integer curPage, Integer size);
}
