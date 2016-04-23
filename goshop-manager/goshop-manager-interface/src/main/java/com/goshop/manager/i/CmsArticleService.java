package com.goshop.manager.i;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.CmsArticleClass;

/**
 * Created by Administrator on 2016/4/22.
 */
public interface CmsArticleService {

    //发布箱
    public static final Integer TYPE_PUBLISH=1;
    //审核箱
    public static final Integer TYPE_VERIFY=2;
    //垃圾箱
    public static final Integer TYPE_RUBBISH=3;
    /**
     * 按文件类型查询
     * @param curPage
     * @param pageSize
     * @param articleType
     * @return
     */
    PageInfo<CmsArticleClass> findByArticleType(Integer curPage, Integer pageSize, Integer articleType);
}
