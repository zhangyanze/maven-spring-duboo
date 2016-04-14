package com.goshop.manager.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.common.utils.JsonUtils;
import com.goshop.manager.i.StoreGradeService;
import com.goshop.manager.i.StoreJoinManageService;
import com.goshop.manager.model.JsonManagement;
import com.goshop.manager.pojo.StoreGrade;
import com.goshop.manager.pojo.StoreJoin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/store_join")
public class StoreJoinManageController {

    @Autowired
    StoreJoinManageService storeJoinManageService;

    @Autowired
    StoreGradeService storeGradeService;

    @RequestMapping
    public String join(@RequestParam(value="p",required=false) Integer curPage,
                       Model model, HttpServletRequest request) {
        PageInfo<StoreJoin> page=storeJoinManageService.findAll(curPage, 20);

        List<StoreGrade> storeGradeList=storeGradeService.findAll();
        model.addAttribute("P_STORE_GRADE",storeGradeList);
        model.addAttribute("P_PAGE",page);
        return "store/store_join";
    }

    @RequestMapping("/detail")
    public String detail(Long member_id,
                       Model model, HttpServletRequest request) {
        StoreJoin storeJoin=storeJoinManageService.find(member_id);
        model.addAttribute("P_STORE_JOIN",storeJoin);
        String scIds = storeJoin.getStoreClassIds();
        List<JsonManagement> jsonManagementList = JsonUtils.jsonToList(scIds, JsonManagement.class);
        model.addAttribute("P_CLASS_LIST", jsonManagementList);
        return "store/store_join_detail";
    }

}
