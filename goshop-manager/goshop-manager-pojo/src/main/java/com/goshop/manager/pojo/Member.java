package com.goshop.manager.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

public class Member implements Serializable {
    private Long memberId;

    private Long userId;

    private String memberTruename;

    private String memberAvatar;

    private Boolean memberSex;

    private Date memberBirthday;

    private String memberEmail;

    private String memberQq;

    private String memberWw;

    private Integer memberLoginNum;

    private Timestamp memberTime;

    private Timestamp memberLoginTime;

    private String memberOldLoginTime;

    private String memberLoginIp;

    private String memberOldLoginIp;

    private String memberQqopenid;

    private Integer memberPoints;

    private BigDecimal availablePredeposit;

    private BigDecimal freezePredeposit;

    private Boolean informAllow;

    private Boolean isBuy;

    private Boolean isAllowtalk;

    private Boolean memberState;

    private Integer memberCredit;

    private Integer memberAreaid;

    private Integer memberCityid;

    private Integer memberProvinceid;

    private String memberAreainfo;

    private String memberQqinfo;

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getMemberTruename() {
        return memberTruename;
    }

    public void setMemberTruename(String memberTruename) {
        this.memberTruename = memberTruename == null ? null : memberTruename.trim();
    }

    public String getMemberAvatar() {
        return memberAvatar;
    }

    public void setMemberAvatar(String memberAvatar) {
        this.memberAvatar = memberAvatar == null ? null : memberAvatar.trim();
    }

    public Boolean getMemberSex() {
        return memberSex;
    }

    public void setMemberSex(Boolean memberSex) {
        this.memberSex = memberSex;
    }

    public Date getMemberBirthday() {
        return memberBirthday;
    }

    public void setMemberBirthday(Date memberBirthday) {
        this.memberBirthday = memberBirthday;
    }

    public String getMemberEmail() {
        return memberEmail;
    }

    public void setMemberEmail(String memberEmail) {
        this.memberEmail = memberEmail == null ? null : memberEmail.trim();
    }

    public String getMemberQq() {
        return memberQq;
    }

    public void setMemberQq(String memberQq) {
        this.memberQq = memberQq == null ? null : memberQq.trim();
    }

    public String getMemberWw() {
        return memberWw;
    }

    public void setMemberWw(String memberWw) {
        this.memberWw = memberWw == null ? null : memberWw.trim();
    }

    public Integer getMemberLoginNum() {
        return memberLoginNum;
    }

    public void setMemberLoginNum(Integer memberLoginNum) {
        this.memberLoginNum = memberLoginNum;
    }

    public Timestamp getMemberTime() {
        return memberTime;
    }

    public void setMemberTime(Timestamp memberTime) {
        this.memberTime = memberTime;
    }

    public Timestamp getMemberLoginTime() {
        return memberLoginTime;
    }

    public void setMemberLoginTime(Timestamp memberLoginTime) {
        this.memberLoginTime = memberLoginTime;
    }

    public String getMemberOldLoginTime() {
        return memberOldLoginTime;
    }

    public void setMemberOldLoginTime(String memberOldLoginTime) {
        this.memberOldLoginTime = memberOldLoginTime == null ? null : memberOldLoginTime.trim();
    }

    public String getMemberLoginIp() {
        return memberLoginIp;
    }

    public void setMemberLoginIp(String memberLoginIp) {
        this.memberLoginIp = memberLoginIp == null ? null : memberLoginIp.trim();
    }

    public String getMemberOldLoginIp() {
        return memberOldLoginIp;
    }

    public void setMemberOldLoginIp(String memberOldLoginIp) {
        this.memberOldLoginIp = memberOldLoginIp == null ? null : memberOldLoginIp.trim();
    }

    public String getMemberQqopenid() {
        return memberQqopenid;
    }

    public void setMemberQqopenid(String memberQqopenid) {
        this.memberQqopenid = memberQqopenid == null ? null : memberQqopenid.trim();
    }

    public Integer getMemberPoints() {
        return memberPoints;
    }

    public void setMemberPoints(Integer memberPoints) {
        this.memberPoints = memberPoints;
    }

    public BigDecimal getAvailablePredeposit() {
        return availablePredeposit;
    }

    public void setAvailablePredeposit(BigDecimal availablePredeposit) {
        this.availablePredeposit = availablePredeposit;
    }

    public BigDecimal getFreezePredeposit() {
        return freezePredeposit;
    }

    public void setFreezePredeposit(BigDecimal freezePredeposit) {
        this.freezePredeposit = freezePredeposit;
    }

    public Boolean getInformAllow() {
        return informAllow;
    }

    public void setInformAllow(Boolean informAllow) {
        this.informAllow = informAllow;
    }

    public Boolean getIsBuy() {
        return isBuy;
    }

    public void setIsBuy(Boolean isBuy) {
        this.isBuy = isBuy;
    }

    public Boolean getIsAllowtalk() {
        return isAllowtalk;
    }

    public void setIsAllowtalk(Boolean isAllowtalk) {
        this.isAllowtalk = isAllowtalk;
    }

    public Boolean getMemberState() {
        return memberState;
    }

    public void setMemberState(Boolean memberState) {
        this.memberState = memberState;
    }

    public Integer getMemberCredit() {
        return memberCredit;
    }

    public void setMemberCredit(Integer memberCredit) {
        this.memberCredit = memberCredit;
    }

    public Integer getMemberAreaid() {
        return memberAreaid;
    }

    public void setMemberAreaid(Integer memberAreaid) {
        this.memberAreaid = memberAreaid;
    }

    public Integer getMemberCityid() {
        return memberCityid;
    }

    public void setMemberCityid(Integer memberCityid) {
        this.memberCityid = memberCityid;
    }

    public Integer getMemberProvinceid() {
        return memberProvinceid;
    }

    public void setMemberProvinceid(Integer memberProvinceid) {
        this.memberProvinceid = memberProvinceid;
    }

    public String getMemberAreainfo() {
        return memberAreainfo;
    }

    public void setMemberAreainfo(String memberAreainfo) {
        this.memberAreainfo = memberAreainfo == null ? null : memberAreainfo.trim();
    }

    public String getMemberQqinfo() {
        return memberQqinfo;
    }

    public void setMemberQqinfo(String memberQqinfo) {
        this.memberQqinfo = memberQqinfo == null ? null : memberQqinfo.trim();
    }
}