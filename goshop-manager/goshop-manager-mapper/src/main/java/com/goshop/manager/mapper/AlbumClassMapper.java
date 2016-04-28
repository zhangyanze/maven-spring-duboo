package com.goshop.manager.mapper;

import com.goshop.manager.pojo.AlbumClass;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AlbumClassMapper {
    int deleteByPrimaryKey(Integer aclassId);

    int insert(AlbumClass record);

    int insertSelective(AlbumClass record);

    AlbumClass selectByPrimaryKey(Integer aclassId);

    int updateByPrimaryKeySelective(AlbumClass record);

    int updateByPrimaryKey(AlbumClass record);

    List<AlbumClass> findByStoreId(@Param("memberId")Long memberId,@Param("sortValue")Integer sortValue);
}