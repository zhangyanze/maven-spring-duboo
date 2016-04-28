package com.goshop.seller.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.StoreService;
import com.goshop.manager.mapper.AlbumClassMapper;
import com.goshop.manager.pojo.AlbumClass;
import com.goshop.manager.pojo.Store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AlbumClassServiceImpl implements AlbumClassService {

    @Autowired
    AlbumClassMapper albumClassMapper;

    @Override
    public PageInfo<AlbumClass> findByStoreId(Integer curPage, Integer pageSize, Long memberId,Integer sortValue) {
        if(curPage==null){
            curPage=1;
        }
        if(pageSize==null){
            pageSize=20;
        }
        PageHelper.startPage(curPage, pageSize);
        List<AlbumClass> list=albumClassMapper.findByStoreId(memberId,sortValue);
        return new PageInfo<>(list);
    }
}
