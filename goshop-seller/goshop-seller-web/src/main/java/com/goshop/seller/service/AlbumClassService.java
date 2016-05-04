package com.goshop.seller.service;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.AlbumClass;

/**
 * Created by Administrator on 2016/4/28.
 */
public interface AlbumClassService {
    PageInfo<AlbumClass> findByStoreId(Integer curPage, Integer pageSize, Long memberId,Integer sortValue);

    Integer findCountByStoreId(Long userId);

    AlbumClass findOneByAclassNameAndStoreId(String aclassName, Long userId);

    int save(AlbumClass albumClass,Long userId);

    int delete(Integer aclassId,Long userId);

    AlbumClass findByAclassIdAndUserId(Integer aclassId, Long userId);

    int update(AlbumClass albumClass, Long userId);
}
