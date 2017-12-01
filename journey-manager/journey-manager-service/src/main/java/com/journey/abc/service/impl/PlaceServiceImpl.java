package com.journey.abc.service.impl;

import com.journey.abc.dao.TbPlaceCustomMapper;
import com.journey.abc.dao.TbPlaceMapper;
import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbPlace;
import com.journey.abc.pojo.vo.TbItemQuery4;
import com.journey.abc.service.PlaceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: wyf
 * Date: 2017/11/23 0023
 * Time: 17:30
 * Version:V1.0
 */
@Service
public class PlaceServiceImpl implements PlaceService {
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TbPlaceCustomMapper tbPlaceCustomMapper;

    @Autowired
    private TbPlaceMapper tbPlaceMapper;

    @Override
    public Result<TbPlace> listPlaceByPage(Page page, Order order,TbItemQuery4 query) {
        Result<TbPlace> result=null;
        try {
            result=new Result<>();
            Map<String,Object> map=new HashMap<>();
            map.put("page",page);
            map.put("order",order);
            map.put("query",query);
            int total=  tbPlaceCustomMapper.countPlace(map);
            result.setTotal(total);
            List<TbPlace> rows=tbPlaceCustomMapper.listPlaceByPage(map);
            result.setRows(rows);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Integer delete(List<Integer> ids) {
        /*int a =0;
        for(Integer i:ids){
            a=tbCityCustomMapper.delete(i);
        }
        return a;*/
        Integer a=0;
        a = tbPlaceCustomMapper.delete(ids);
        if (a==null){
            a=0;
        }
        return a;
    }

    @Override
    public int savePlace(TbPlace tbPlace) {
        int i = 0;
        try {
            i = tbPlaceMapper.insert(tbPlace);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
