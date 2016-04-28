package com.goshop.manager.mapper;

import com.goshop.manager.pojo.AlbumPic;

public interface AlbumPicMapper {
    int deleteByPrimaryKey(Integer apicId);

    int insert(AlbumPic record);

    int insertSelective(AlbumPic record);

    AlbumPic selectByPrimaryKey(Integer apicId);

    int updateByPrimaryKeySelective(AlbumPic record);

    int updateByPrimaryKey(AlbumPic record);
}