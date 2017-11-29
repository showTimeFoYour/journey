package com.journey.abc.dao;

import com.journey.abc.pojo.vo.TbSearchHotelCustom;
import com.journey.abc.pojo.vo.TbSearchHotelResult;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class SearchHotelDao {

     @Autowired
    private SolrServer solrServer;

    /**
     *根据查询条件查询索引库
     */
    public TbSearchHotelResult search(SolrQuery query) throws Exception {

        //根据query查询索引库
        QueryResponse queryResponse = solrServer.query(query);
        //取查询结果。
        SolrDocumentList solrDocumentList = queryResponse.getResults();
        //取查询结果总记录数
        long numFound = solrDocumentList.getNumFound();
        TbSearchHotelResult result = new TbSearchHotelResult();
        result.setRecordCount(numFound);
        //取酒店信息列表，需要取高亮显示酒店字段
        Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();
        List<TbSearchHotelCustom> hotelList = new ArrayList<>();
        for (SolrDocument solrDocument : solrDocumentList) {
            TbSearchHotelCustom item = new TbSearchHotelCustom();
            item.setId((String) solrDocument.get("id"));
            item.setHotelImage((String) solrDocument.get("hotel_image"));
            //取高亮显示
            List<String> list = highlighting.get(solrDocument.get("id")).get("hotel_name");
            String name = "";
            if (list != null && list.size() > 0) {
                name = list.get(0);
            } else {
                name = (String) solrDocument.get("hotel_name");
            }
            item.setHotelName(name);
            //添加到商品列表
            hotelList.add(item);
        }
        result.setHotelList(hotelList);
        //返回结果
        return result;
    }

}
