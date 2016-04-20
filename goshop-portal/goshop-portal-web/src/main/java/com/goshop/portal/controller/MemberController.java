package com.goshop.portal.controller;

import com.goshop.common.context.CustomTimestampEditor;
import com.goshop.common.utils.BeanUtils;
import com.goshop.common.utils.JsonUtils;
import com.goshop.common.utils.ResponseMessageUtils;
import com.goshop.manager.pojo.Member;
import com.goshop.manager.pojo.User;
import com.goshop.portal.i.MemberService;
import com.goshop.portal.model.MemberModel;
import com.goshop.portal.model.PrivacyModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.JavaScriptUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;

@Controller
@RequestMapping(value =  "/member")
public class MemberController {

    @InitBinder
    protected void initBinder(HttpServletRequest request,
                              ServletRequestDataBinder binder) throws Exception {
        //对于需要转换为Date类型的属性，使用DateEditor进行处理
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);

        SimpleDateFormat datetimeFormat = new SimpleDateFormat(
                "yyyy-MM-dd HH:mm:ss");
        datetimeFormat.setLenient(false);

        binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(
                dateFormat, true));
        binder.registerCustomEditor(java.sql.Timestamp.class,
                new CustomTimestampEditor(datetimeFormat, true));
    }

    @Autowired
    MemberService memberService;

    @RequestMapping("/base_set")
    public String index(User user,Model model,
                        HttpServletRequest request,
                        HttpServletResponse response){
        Member member=memberService.findUserByUserId(user.getId());
        String json=member.getMemberPrivacy();
        if(StringUtils.hasText(json)) {
            PrivacyModel pm = (PrivacyModel) JsonUtils.jsonToPojo(json, PrivacyModel.class);
            model.addAttribute("P_PRIVACY", pm);
        }else{
            model.addAttribute("P_PRIVACY", new PrivacyModel());
        }
        model.addAttribute("P_MEMBER",member);
        model.addAttribute("P_OP","base");
        return "member/set_base";
    }

    @RequestMapping("/base_save")
    @ResponseBody
    public void baseSave(User user,MemberModel memberModel,
                        HttpServletRequest request,
                        HttpServletResponse response){

        String url = request.getContextPath() + "/member/base_set.html";
        String name = "保存成功！";
        try {
            Member member =new Member();
            BeanUtils.applyIf(member, memberModel);
            if(memberModel.getPrivacyModel()!=null) {
                String json = JsonUtils.objectToJson(memberModel.getPrivacyModel());
                member.setMemberPrivacy(json);
            }
            member.setUserId(user.getId());
            memberService.updateByUserId(member);
        } catch (Exception ex) {
            ex.printStackTrace();
            name = "保存失败！";
        }
        ResponseMessageUtils.xmlCDataOut(response, name, url);
    }

    @RequestMapping(value="/password",method = RequestMethod.GET)
    public String password(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response){
        model.addAttribute("P_OP", "passwd");
        return "member/set_password";
    }

    @RequestMapping(value="/password",method = RequestMethod.POST)
    @ResponseBody
    public void passwordSave(User user,String orig_password,
                           String new_password,String confirm_password,Model model,
                           HttpServletRequest request,
                           HttpServletResponse response){
        String url = request.getContextPath() + "/member/password.html";
        String name = "密码修改成功！";
        if(StringUtils.hasText(orig_password)&&StringUtils.hasText(new_password)&&StringUtils.hasText(confirm_password)) {
            if (new_password.equals(confirm_password)) {
                Boolean is=memberService.checkPassword(user.getId(), orig_password);
                if(is){
                    try {
                        memberService.updatePassword(user.getId(),confirm_password);
                    } catch (Exception e) {
                        e.printStackTrace();
                        name="修改密码错误！";
                    }
                }else {
                    name = "原密码错误，请确认！";
                }
            } else {
                name = "两次密码不同，请确认！";
            }
        }else{
            name = "密码不能为空，请确认！";
        }
        ResponseMessageUtils.xmlCDataOut(response, name, url);
    }

    @RequestMapping(value="/email",method = RequestMethod.GET)
    public String email(Model model,
                           HttpServletRequest request,
                           HttpServletResponse response){
        model.addAttribute("P_OP", "email");
        return "member/set_email";
    }

    @RequestMapping(value="/email",method = RequestMethod.POST)
    @ResponseBody
    public void emailSave(User user,String orig_password,String email,Model model,
                             HttpServletRequest request,
                             HttpServletResponse response){
        String url = request.getContextPath() + "/member/email.html";
        String name = "email修改成功！";
        if(StringUtils.hasText(orig_password)){
            Boolean is=memberService.checkPassword(user.getId(), orig_password);
            if(is){
                memberService.updateEmail(user.getId(), email);
            }else{
                name = "原密码错误，请确认！";
            }
        }else{
            name = "密码不能为空！";
        }
        ResponseMessageUtils.xmlCDataOut(response, name, url);
    }

    @RequestMapping(value="/avatar",method = RequestMethod.GET)
    public String avatar(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response){
        model.addAttribute("P_OP", "avatar");
        return "member/set_avatar";
    }

    @RequestMapping(value="/avatar",method = RequestMethod.POST)
    @ResponseBody
    public void avatarSave(User user,Model model,
                          HttpServletRequest request,
                          HttpServletResponse response){
        String url = request.getContextPath() + "/member/avatar.html";
        String name = "头像修改成功！";
        ResponseMessageUtils.xmlCDataOut(response, name, url);
    }
}
