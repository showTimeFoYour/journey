package com.journey.abc.web;

import com.journey.abc.dto.MessageResult;
import com.journey.abc.service.SearchHotelService;
import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;

/**
 * User: Frogzec
 * Date: 2017/11/28
 * Time: 21:40
 * Version:V1.0
 */
@Controller
public class ImportHotelMessage {

    @Autowired
    private SearchHotelService searchHotelService ;

    @ResponseBody
    @RequestMapping("/search/hotel/import")
    public MessageResult importHotelMessage() throws IOException, SolrServerException {

        searchHotelService.importAllItems();
        MessageResult ms = new MessageResult();
        ms.setSuccess(true);
        ms.setMessage("索引导入成功");
        return  ms;
    }
}
