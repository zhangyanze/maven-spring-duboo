package com.goshop.portalrest.controller;

import com.goshop.common.utils.JsonUtils;
import com.goshop.manager.i.GoodsClassService;
import com.goshop.manager.pojo.GoodsClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/goods_class")
public class GoodsClassController {

    @Autowired
    GoodsClassService goodsClassService;

    @RequestMapping("/json_class")
    @ResponseBody
    public Object jsonClass(Integer gc_parent_id, String callback, HttpServletRequest request) {

        List<GoodsClass> goodsClassList = goodsClassService.findGradeByGcParentId(gc_parent_id);
        return JsonUtils.jsonp(goodsClassList, callback);
    }
}
