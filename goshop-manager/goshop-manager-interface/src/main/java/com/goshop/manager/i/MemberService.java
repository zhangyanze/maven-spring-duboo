package com.goshop.manager.i;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.Member;

/**
 * Created by Administrator on 2016/4/18.
 */
public interface MemberService {
    PageInfo<Member> findAll(Integer curPage, Integer pageSize);

    PageInfo<Member> findUserAll(Integer curPage, Integer pageSize);

    Member findOne(Long memberId);

    Boolean checkEmail(String memberEmail, Long memberId);
}
