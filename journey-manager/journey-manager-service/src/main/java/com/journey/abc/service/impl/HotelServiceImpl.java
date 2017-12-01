package com.journey.abc.service.impl;

import com.journey.abc.dao.TbHotelCustomMapper;
import com.journey.abc.dao.TbHotelMapper;
import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbHotel;
import com.journey.abc.pojo.vo.TbItemQuery3;
import com.journey.abc.service.HotelService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * User: wyf
 * Date: 2017/11/23 0023
 * Time: 17:30
 * Version:V1.0
 */
@Service
public class HotelServiceImpl implements HotelService {
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TbHotelCustomMapper tbHotelCustomMapper;
    @Autowired
    private TbHotelMapper tbHotelMapper;

    @Override
    public Result<TbHotel> listHotelByPage(Page page, Order order,TbItemQuery3 query) {
        Result<TbHotel> result=null;
        try {
            result=new Result<>();
            Map<String,Object> map=new HashMap<>();
            map.put("page",page);
            map.put("order",order);
            map.put("query",query);
            int total=  tbHotelCustomMapper.countHotel(map);
            result.setTotal(total);
            List<TbHotel> rows=tbHotelCustomMapper.listHotelByPage(map);
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
        a = tbHotelCustomMapper.delete(ids);
        if (a==null){
            a=0;
        }
        return a;
    }

    @Override
    public int saveCity(TbHotel tbHotel) {
        int i = 0;
        try {
            i = tbHotelMapper.insert(tbHotel);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
