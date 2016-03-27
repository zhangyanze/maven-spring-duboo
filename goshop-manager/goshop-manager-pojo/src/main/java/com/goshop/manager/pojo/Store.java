package com.goshop.manager.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Store implements Serializable {
    private String id;

    private Date created;

    private String storeName;

    private Integer sort;

    private String credentialsImage;

    private String description;

    private String gradeId;

    private String licenseImage;

    private String memberId;

    private String memberName;

    private Integer nameAuth;

    private String scId;

    private String areaId;

    private String storeAddress;

    private Integer storeAudit;

    private Integer storeAuth;

    private String storeBanner;

    private String storeCenterQuicklink;

    private String storeCloseInfo;

    private Date storeEndTime;

    private String storeCode;

    private Integer storeCollect;

    private Integer storeCredit;

    private String storeDescription;

    private String storeDomain;

    private Integer storeDomainTimes;

    private String storeKeywords;

    private String storeLabel;

    private String storeMsn;

    private String storeOwnerCard;

    private String storeQq;

    private Integer storeRecommend;

    private String storeSlide;

    private String storeSlideUrl;

    private String storeState;

    private String storeTel;

    private String storeTheme;

    private String storeWw;

    private String storeZip;

    private String storeCompanyName;

    private String gradeName;

    private BigDecimal praiseRate;

    private Integer storeDeliveryCredit;

    private Integer storeDescCredit;

    private Integer storeServiceCredit;

    private String storeZy;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName == null ? null : storeName.trim();
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getCredentialsImage() {
        return credentialsImage;
    }

    public void setCredentialsImage(String credentialsImage) {
        this.credentialsImage = credentialsImage == null ? null : credentialsImage.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getGradeId() {
        return gradeId;
    }

    public void setGradeId(String gradeId) {
        this.gradeId = gradeId == null ? null : gradeId.trim();
    }

    public String getLicenseImage() {
        return licenseImage;
    }

    public void setLicenseImage(String licenseImage) {
        this.licenseImage = licenseImage == null ? null : licenseImage.trim();
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId == null ? null : memberId.trim();
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName == null ? null : memberName.trim();
    }

    public Integer getNameAuth() {
        return nameAuth;
    }

    public void setNameAuth(Integer nameAuth) {
        this.nameAuth = nameAuth;
    }

    public String getScId() {
        return scId;
    }

    public void setScId(String scId) {
        this.scId = scId == null ? null : scId.trim();
    }

    public String getAreaId() {
        return areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId == null ? null : areaId.trim();
    }

    public String getStoreAddress() {
        return storeAddress;
    }

    public void setStoreAddress(String storeAddress) {
        this.storeAddress = storeAddress == null ? null : storeAddress.trim();
    }

    public Integer getStoreAudit() {
        return storeAudit;
    }

    public void setStoreAudit(Integer storeAudit) {
        this.storeAudit = storeAudit;
    }

    public Integer getStoreAuth() {
        return storeAuth;
    }

    public void setStoreAuth(Integer storeAuth) {
        this.storeAuth = storeAuth;
    }

    public String getStoreBanner() {
        return storeBanner;
    }

    public void setStoreBanner(String storeBanner) {
        this.storeBanner = storeBanner == null ? null : storeBanner.trim();
    }

    public String getStoreCenterQuicklink() {
        return storeCenterQuicklink;
    }

    public void setStoreCenterQuicklink(String storeCenterQuicklink) {
        this.storeCenterQuicklink = storeCenterQuicklink == null ? null : storeCenterQuicklink.trim();
    }

    public String getStoreCloseInfo() {
        return storeCloseInfo;
    }

    public void setStoreCloseInfo(String storeCloseInfo) {
        this.storeCloseInfo = storeCloseInfo == null ? null : storeCloseInfo.trim();
    }

    public Date getStoreEndTime() {
        return storeEndTime;
    }

    public void setStoreEndTime(Date storeEndTime) {
        this.storeEndTime = storeEndTime;
    }

    public String getStoreCode() {
        return storeCode;
    }

    public void setStoreCode(String storeCode) {
        this.storeCode = storeCode == null ? null : storeCode.trim();
    }

    public Integer getStoreCollect() {
        return storeCollect;
    }

    public void setStoreCollect(Integer storeCollect) {
        this.storeCollect = storeCollect;
    }

    public Integer getStoreCredit() {
        return storeCredit;
    }

    public void setStoreCredit(Integer storeCredit) {
        this.storeCredit = storeCredit;
    }

    public String getStoreDescription() {
        return storeDescription;
    }

    public void setStoreDescription(String storeDescription) {
        this.storeDescription = storeDescription == null ? null : storeDescription.trim();
    }

    public String getStoreDomain() {
        return storeDomain;
    }

    public void setStoreDomain(String storeDomain) {
        this.storeDomain = storeDomain == null ? null : storeDomain.trim();
    }

    public Integer getStoreDomainTimes() {
        return storeDomainTimes;
    }

    public void setStoreDomainTimes(Integer storeDomainTimes) {
        this.storeDomainTimes = storeDomainTimes;
    }

    public String getStoreKeywords() {
        return storeKeywords;
    }

    public void setStoreKeywords(String storeKeywords) {
        this.storeKeywords = storeKeywords == null ? null : storeKeywords.trim();
    }

    public String getStoreLabel() {
        return storeLabel;
    }

    public void setStoreLabel(String storeLabel) {
        this.storeLabel = storeLabel == null ? null : storeLabel.trim();
    }

    public String getStoreMsn() {
        return storeMsn;
    }

    public void setStoreMsn(String storeMsn) {
        this.storeMsn = storeMsn == null ? null : storeMsn.trim();
    }

    public String getStoreOwnerCard() {
        return storeOwnerCard;
    }

    public void setStoreOwnerCard(String storeOwnerCard) {
        this.storeOwnerCard = storeOwnerCard == null ? null : storeOwnerCard.trim();
    }

    public String getStoreQq() {
        return storeQq;
    }

    public void setStoreQq(String storeQq) {
        this.storeQq = storeQq == null ? null : storeQq.trim();
    }

    public Integer getStoreRecommend() {
        return storeRecommend;
    }

    public void setStoreRecommend(Integer storeRecommend) {
        this.storeRecommend = storeRecommend;
    }

    public String getStoreSlide() {
        return storeSlide;
    }

    public void setStoreSlide(String storeSlide) {
        this.storeSlide = storeSlide == null ? null : storeSlide.trim();
    }

    public String getStoreSlideUrl() {
        return storeSlideUrl;
    }

    public void setStoreSlideUrl(String storeSlideUrl) {
        this.storeSlideUrl = storeSlideUrl == null ? null : storeSlideUrl.trim();
    }

    public String getStoreState() {
        return storeState;
    }

    public void setStoreState(String storeState) {
        this.storeState = storeState == null ? null : storeState.trim();
    }

    public String getStoreTel() {
        return storeTel;
    }

    public void setStoreTel(String storeTel) {
        this.storeTel = storeTel == null ? null : storeTel.trim();
    }

    public String getStoreTheme() {
        return storeTheme;
    }

    public void setStoreTheme(String storeTheme) {
        this.storeTheme = storeTheme == null ? null : storeTheme.trim();
    }

    public String getStoreWw() {
        return storeWw;
    }

    public void setStoreWw(String storeWw) {
        this.storeWw = storeWw == null ? null : storeWw.trim();
    }

    public String getStoreZip() {
        return storeZip;
    }

    public void setStoreZip(String storeZip) {
        this.storeZip = storeZip == null ? null : storeZip.trim();
    }

    public String getStoreCompanyName() {
        return storeCompanyName;
    }

    public void setStoreCompanyName(String storeCompanyName) {
        this.storeCompanyName = storeCompanyName == null ? null : storeCompanyName.trim();
    }

    public String getGradeName() {
        return gradeName;
    }

    public void setGradeName(String gradeName) {
        this.gradeName = gradeName == null ? null : gradeName.trim();
    }

    public BigDecimal getPraiseRate() {
        return praiseRate;
    }

    public void setPraiseRate(BigDecimal praiseRate) {
        this.praiseRate = praiseRate;
    }

    public Integer getStoreDeliveryCredit() {
        return storeDeliveryCredit;
    }

    public void setStoreDeliveryCredit(Integer storeDeliveryCredit) {
        this.storeDeliveryCredit = storeDeliveryCredit;
    }

    public Integer getStoreDescCredit() {
        return storeDescCredit;
    }

    public void setStoreDescCredit(Integer storeDescCredit) {
        this.storeDescCredit = storeDescCredit;
    }

    public Integer getStoreServiceCredit() {
        return storeServiceCredit;
    }

    public void setStoreServiceCredit(Integer storeServiceCredit) {
        this.storeServiceCredit = storeServiceCredit;
    }

    public String getStoreZy() {
        return storeZy;
    }

    public void setStoreZy(String storeZy) {
        this.storeZy = storeZy == null ? null : storeZy.trim();
    }
}