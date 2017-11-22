package com.journey.abc.service;

import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbItem;
import com.journey.abc.pojo.vo.TbItemCustom;
import com.journey.abc.pojo.vo.TbItemQuery;

import java.util.List;

/**
 * User: Frogzec
 * Date: 2017/11/18
 * Time: 14:39
 * Version:V1.0
 */
public interface ItemService {


    Result<TbItemCustom> listItemsByPage(Page page, TbItemQuery tbItemQuery);

    //删除订单(修改状态为3)
    int updateItemsByIds(List<Long> ids);

    //取消订单
    int cancelItemsByIds(List<Long> ids);

    //确认订单
    int confirmItemsByIds(List<Long> ids);

    //根据ID查询订单
    TbItemCustom getItemByid(Long id);

    //修改订单
    int updateItemById(TbItem item);
}
