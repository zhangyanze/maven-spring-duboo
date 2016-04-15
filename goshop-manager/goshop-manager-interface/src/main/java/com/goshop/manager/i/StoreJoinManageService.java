package com.goshop.manager.i;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.StoreJoin;

/**
 * Created by Administrator on 2016/4/14.
 */
public interface StoreJoinManageService {
    PageInfo<StoreJoin> findAll(Integer curPage, Integer pageSize);

    StoreJoin find(Long memberId);

    void saveVerify(Long member_id, String verify_type, String join_message, String[] commis_rate);
}
