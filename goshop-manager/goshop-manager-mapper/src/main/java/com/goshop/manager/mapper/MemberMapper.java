package com.goshop.manager.mapper;

import com.goshop.manager.pojo.Member;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MemberMapper {
    int deleteByPrimaryKey(Long memberId);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Long memberId);

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);

    int findByMemberEmailCount(String memberEmail);

    int checkLoginNameByEmail(@Param("loginName")String loginName, @Param("memberEmail")String memberEmail);

    List<Member> findAll();

    List<Member> findUserAll();

    Member findByMemberEmail(@Param("memberEmail")String memberEmail);
}