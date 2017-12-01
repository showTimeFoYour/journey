package com.journey.abc.service;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbPlace;
import com.journey.abc.pojo.vo.TbItemQuery4;

import java.util.List;

/**
 * User: wyf
 * Date: 2017/11/23 0023
 * Time: 17:28
 * Version:V1.0
 */

public interface PlaceService {
    Result<TbPlace> listPlaceByPage(Page page, Order order, TbItemQuery4 query);

    Integer delete(List<Integer> ids);

    int savePlace(TbPlace tbPlace);
}
