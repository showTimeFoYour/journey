package com.journey.abc.service.impl;

import com.journey.abc.dao.SearchHotelDao;
import com.journey.abc.dao.TbHotelCustomMapper;
import com.journey.abc.pojo.vo.TbSearchHotelCustom;
import com.journey.abc.pojo.vo.TbSearchHotelResult;
import com.journey.abc.service.SearchHotelService;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * User: Frogzec
 * Date: 2017/11/28
 * Time: 21:27
 * Version:V1.0
 */
@Service
public class SearchHotelServiceImpl implements SearchHotelService {

    @Autowired
    private TbHotelCustomMapper tbHotelCustomMapper;

    @Autowired
    private SearchHotelDao searchHotelDao;

    @Autowired
    private SolrServer solrServer;


    @Override
    public void importAllItems() throws SolrServerException, IOException {

        List<TbSearchHotelCustom> list = tbHotelCustomMapper.getSearchHotelList();


        //采集数据便利
        for(TbSearchHotelCustom searchHotel:list)
        {
            SolrInputDocument document = new SolrInputDocument();
            document.addField("id",searchHotel.getId());
            document.addField("hotel_name",searchHotel.getHotelName());
            document.addField("hotel_image",searchHotel.getHotelImage());
            //写入索引库
            solrServer.add(document);
        }

        solrServer.commit();
    }

    /**
     * home_全文检索
     * @param keyword
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    @Override
    public TbSearchHotelResult search(String keyword, Integer page, Integer rows) throws Exception {

       //创建一个SolrQuery对象
        SolrQuery query  = new SolrQuery();
        //设置查询条件
        query.setQuery(keyword);
        //设置分页条件
        if (page <=0 ) page = 1;
        query.setStart((page - 1) * rows);
        query.setRows(rows);
        //设置默认搜索域
        query.set("df", "hotel_keywords");
        //开启高亮显示
        query.setHighlight(true);
        query.addHighlightField("hotel_name");
        query.setHighlightSimplePre("<em style=\"color:red\">");
        query.setHighlightSimplePost("</em>");

        //查询执行
        TbSearchHotelResult searchResult = searchHotelDao.search(query);
        //计算总页数
        long recordCount = searchResult.getRecordCount();
        int totalPage = (int) (recordCount / rows);
        if (recordCount % rows > 0){
            totalPage ++;
        }
        //添加到返回结果
        searchResult.setTotalPages(totalPage);
        //返回结果
        return  searchResult;


    }
}
