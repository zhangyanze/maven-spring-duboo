package com.goshop.manager.i;

import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.CmsArticleClass;

import java.util.List;

/**
 * Created by Administrator on 2016/4/21.
 */
public interface CmsArticleClassService {
    PageInfo<CmsArticleClass> findGradeByParentId(Integer curPage,Integer pageSize,Long parentId);

    List<CmsArticleClass> findByParentId(Long parentId);
}
