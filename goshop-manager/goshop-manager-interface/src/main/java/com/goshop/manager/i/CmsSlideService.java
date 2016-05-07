package com.goshop.manager.i;

import com.goshop.manager.pojo.CmsSlide;

import java.util.List;

/**
 * Created by Administrator on 2016/5/5.
 */
public interface CmsSlideService {
    List<CmsSlide> findAll();

    void delete(Integer slideId);

    CmsSlide save(Integer slideSort, String slidePath);

    CmsSlide update(Integer slideId, Integer slideSort, String slidePath);

    void update(Integer[] ids, String[] imageUrl);
}
