package com.goshop.seller.service;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.AlbumClass;

/**
 * Created by Administrator on 2016/4/28.
 */
public interface AlbumClassService {
    PageInfo<AlbumClass> findByStoreId(Integer curPage, Integer pageSize, Long memberId,Integer sortValue);
}
