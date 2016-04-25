package com.goshop.manager.i;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.CmsArticle;

/**
 * Created by Administrator on 2016/4/22.
 */
public interface CmsArticleService {

    //草稿箱
    public static final Integer TYPE_DRAFT=1;
    //审核箱
    public static final Integer TYPE_VERIFY=2;
    //发布箱
    public static final Integer TYPE_PUBLISH=3;
    //垃圾箱
    public static final Integer TYPE_RUBBISH=4;
    /**
     * 按文件类型查询
     * @param curPage
     * @param pageSize
     * @param articleType
     * @return
     */
    PageInfo<CmsArticle> findBaseByArticleState(Integer curPage, Integer pageSize, Integer articleType);
}
