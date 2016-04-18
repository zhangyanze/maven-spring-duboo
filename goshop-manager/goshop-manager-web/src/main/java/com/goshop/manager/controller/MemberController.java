package com.goshop.manager.controller;


import com.github.pagehelper.PageInfo;
import com.goshop.common.attachment.AttachmentService;
import com.goshop.common.exception.PageException;
import com.goshop.common.pojo.ResponseStatus;
import com.goshop.common.utils.ImageUtils;
import com.goshop.common.utils.JsonUtils;
import com.goshop.manager.i.MemberService;
import com.goshop.manager.pojo.GoodsClass;
import com.goshop.manager.pojo.Member;
import com.goshop.manager.utils.Jump;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value =  "/member")
public class MemberController {

    @Autowired
    MemberService memberService;

    @RequestMapping(value = "/member", method = RequestMethod.GET)
    public String index(@RequestParam(value = "p", required = false) Integer curPage,
                        Model model, HttpServletRequest request) {
        PageInfo<Member> page=memberService.findUserAll(curPage, 20);
        model.addAttribute("P_PAGE",page);
        return "member/member";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editPage(Long member_id,
                        Model model, HttpServletRequest request) {
        Member member=memberService.findOne(member_id);
        model.addAttribute("P_MEMBER",member);
        return "member/member_edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(String member_passwd,Member member,
                      Model model, HttpServletRequest request) {
        String url = request.getContextPath();
        return Jump.get(url + "/member/member", "修改成功！");
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPage(String member_id,
                       Model model, HttpServletRequest request) {
        return "member/member_add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(String member_name,String member_passwd,Member member,
                      Model model, HttpServletRequest request) {
        String url = request.getContextPath();
        return Jump.get(url + "/member/member", "保存成功！");
    }

    @RequestMapping("/check_email")
    @ResponseBody
    public Object checkEmail(String memberEmail, Long memberId, HttpServletRequest request) {
        Boolean is=memberService.checkEmail(memberEmail, memberId);
        return ResponseStatus.get(is);
    }


}
