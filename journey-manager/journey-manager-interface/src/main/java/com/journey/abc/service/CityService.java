package com.journey.abc.service;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbCity;
import com.journey.abc.pojo.vo.TbItemQuery2;

import java.util.List;

/**
 * User: wyf
 * Date: 2017/11/21 0021
 * Time: 22:03
 * Version:V1.0
 */
public interface CityService {
    Result<TbCity> listCityByPage(Page page, Order order, TbItemQuery2 query);

    Integer delete(List<Integer> ids);
    //新增城市
    int saveCity(TbCity tbCity);
}
