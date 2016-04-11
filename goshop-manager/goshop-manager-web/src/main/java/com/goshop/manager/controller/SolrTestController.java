package com.goshop.manager.controller;

import com.github.pagehelper.PageInfo;
import com.goshop.solr.service.PageInfoFacet;
import com.goshop.solr.service.SolrService;
import org.apache.ibatis.session.RowBounds;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.FacetField;
import org.apache.solr.client.solrj.response.Group;
import org.apache.solr.client.solrj.response.GroupCommand;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.params.GroupParams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/solr/att")
public class SolrTestController {

    @Autowired
    SolrService solrService;

    public class CompleteModel {
        private String n;
        private Integer i;

        public String getN() {
            return n;
        }

        public void setN(String n) {
            this.n = n;
        }

        public Integer getI() {
            return i;
        }

        public void setI(Integer i) {
            this.i = i;
        }
    }


    @RequestMapping("/auto")
    @ResponseBody
    public Object autoComplete(String q,String callback,Model model, HttpServletRequest request,
                               HttpServletResponse response){
        SolrQuery query = new SolrQuery();
        query.setQuery("*:*");
        query.setFilterQueries("nameTypeCreator:" + q);
        query.setParam(GroupParams.GROUP, true);
        query.setParam(GroupParams.GROUP_FIELD, "loadFileName");
        query.setParam(GroupParams.GROUP_LIMIT, "10");


        List<CompleteModel> cms = new ArrayList<CompleteModel>();
        try {
            QueryResponse queryResponse=solrService.query("att_core",query);
            List<GroupCommand>  list=queryResponse.getGroupResponse().getValues();
            for(GroupCommand gc:list){
                for(Group g:gc.getValues()) {
                    CompleteModel cm = new CompleteModel();
                    cm.setN(g.getGroupValue());
                    cm.setI(g.getResult().size());
                    cms.add(cm);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SolrServerException e) {
            e.printStackTrace();
        }

        MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(cms);
        mappingJacksonValue.setJsonpFunction(callback);
        return mappingJacksonValue;
    }

    @RequestMapping("/list")
    public String list(String att_name,String att_type,Integer p,
                       Model model, HttpServletRequest request) {

        SolrQuery query = new SolrQuery();
        query.setQuery("*:*");
        if(StringUtils.hasText(att_name)&&StringUtils.hasText(att_type)){
            query.setFilterQueries("nameTypeCreator:" + att_name+" AND type:"+att_type);
        }else {
            if (StringUtils.hasText(att_name)) {
                query.setFilterQueries("nameTypeCreator:" + att_name);
            }
            if (StringUtils.hasText(att_type)) {
                query.setFilterQueries("type:" + att_type);
            }
        }
        query.setFacet(true).addFacetField("type");
        if(p==null){
            p=1;
        }
        try {
            RowBounds rowBounds =new RowBounds(p,20);
            //PageInfoFacet pageInfoFacet=solrService.queryFacet("att_core", query, rowBounds);
            PageInfoFacet pageInfoFacet=solrService.queryFacet("att_core2", query, rowBounds);
            model.addAttribute("P_PAGE", pageInfoFacet.getPageInfo());
            FacetField facetField=pageInfoFacet.getFacetFieldList().get(0);
            List values=facetField.getValues();
            model.addAttribute("P_FACET",values);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SolrServerException e) {
            e.printStackTrace();
        }

        return "solr_test";
    }

}
