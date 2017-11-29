package com.journey.abc.service;

import com.journey.abc.pojo.vo.TbSearchHotelResult;
import org.apache.solr.client.solrj.SolrServerException;

import java.io.IOException;

/**
 * User: Frogzec
 * Date: 2017/11/28
 * Time: 21:27
 * Version:V1.0
 */
public interface SearchHotelService {

    public void importAllItems() throws SolrServerException, IOException;
    
    TbSearchHotelResult search(String keyword, Integer page, Integer rows) throws Exception;
}
