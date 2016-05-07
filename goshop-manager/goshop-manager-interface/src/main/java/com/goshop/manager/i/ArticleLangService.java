package com.goshop.manager.i;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.ArticleLangInfo;
import com.goshop.manager.pojo.ArticleLangMain;

import java.util.List;

/**
 * Created by Administrator on 2016/5/7.
 */
public interface ArticleLangService {

     PageInfo<ArticleLangMain> findAll(Integer curPage, Integer pageSize);


     int save(ArticleLangMain articleLang, List<ArticleLangInfo> articleLangInfoList);
}
