package com.journey.abc.service.impl;

import com.journey.abc.dao.TbCityCustomMapper;
import com.journey.abc.dao.TbCityMapper;
import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbCity;
import com.journey.abc.pojo.vo.TbItemQuery2;
import com.journey.abc.service.CityService;
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
 * Date: 2017/11/21 0021
 * Time: 22:05
 * Version:V1.0
 */
@Service
public class CityServiceImpl implements CityService {
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TbCityCustomMapper tbCityCustomMapper;
    @Autowired
    private TbCityMapper tbCityMapper;

    @Override
    public Result<TbCity> listCityByPage(Page page, Order order,TbItemQuery2 query) {
        Result<TbCity> result=null;
        try {
            result=new Result<>();
            Map<String,Object> map=new HashMap<>();
            map.put("page",page);
            map.put("order",order);
            map.put("query",query);
            int total=  tbCityCustomMapper.countCity(map);
            result.setTotal(total);
            List<TbCity> rows=tbCityCustomMapper.listCityByPage(map);
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
        a = tbCityCustomMapper.delete(ids);
        if (a==null){
            a=0;
        }
        return a;
    }

    @Override
    public int saveCity(TbCity tbCity) {
        int i = 0;
        try {
            Random random = new Random();
            Long cityId = (long)random.nextInt(1000)%(1000) + 1;
            tbCity.setId(cityId);
            i = tbCityMapper.insert(tbCity);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
