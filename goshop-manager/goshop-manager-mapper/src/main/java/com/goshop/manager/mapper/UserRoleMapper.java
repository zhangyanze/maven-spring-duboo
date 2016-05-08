package com.goshop.manager.mapper;

import com.goshop.manager.pojo.UserRole;
import org.apache.ibatis.annotations.Param;

public interface UserRoleMapper {
    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole findByUIdAndRId(@Param("uId")Long userId,@Param("rId") Long roleId);

    void deleteByUIdAndRId(@Param("uId")Long userId , @Param("rId")Long roleId);
}