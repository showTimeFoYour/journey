package com.journey.abc.service.impl;

import com.journey.abc.dao.TbTravelogueCustomMapper;
import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.vo.TbTravelogueCustom;
import com.journey.abc.pojo.vo.TbTravelogueQuery;
import com.journey.abc.service.TravelogueService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TravelogueServiceImpl implements TravelogueService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TbTravelogueCustomMapper tbTravelogueCustomMapper;

    @Override
    public Result<TbTravelogueCustom> listTravelogueByPage(Page page, Order order,TbTravelogueQuery query) {
        Result<TbTravelogueCustom> result=null;
        try{
            Map<String,Object> map=new HashMap<>();

            map.put("page",page);
            map.put("order",order);
            map.put("query",query);

            result=new Result<>();
            int total=tbTravelogueCustomMapper.countTravelogue(map);
            result.setTotal(total);
            List<TbTravelogueCustom> rows=tbTravelogueCustomMapper.listTravelogueByPage(map);
            result.setRows(rows);

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }
}
