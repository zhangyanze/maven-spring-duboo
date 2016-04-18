package com.goshop.manager.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.MemberService;
import com.goshop.manager.mapper.MemberMapper;
import com.goshop.manager.pojo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

    @Autowired
    MemberMapper memberMapper;

    @Override
    public PageInfo<Member> findAll(Integer curPage, Integer pageSize) {
        //1、设置分页
        if(curPage==null){
            curPage=1;
        }
        if(pageSize==null){
            pageSize=20;
        }
        PageHelper.startPage(curPage, pageSize);
        List<Member> list = memberMapper.findAll();
        return new PageInfo<>(list);
    }

    @Override
    public PageInfo<Member> findUserAll(Integer curPage, Integer pageSize) {
        //1、设置分页
        if(curPage==null){
            curPage=1;
        }
        if(pageSize==null){
            pageSize=20;
        }
        PageHelper.startPage(curPage, pageSize);
        List<Member> list = memberMapper.findUserAll();
        return new PageInfo<>(list);
    }

    @Override
    public Member findOne(Long memberId) {
        return memberMapper.selectByPrimaryKey(memberId);
    }

    @Override
    public Boolean checkEmail(String memberEmail, Long memberId) {
        Member member=memberMapper.findByMemberEmail(memberEmail);
        if(member==null){
            return true;
        }else if(member.getMemberId()==memberId){
            return true;
        }
        return false;
    }
}
