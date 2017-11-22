package com.journey.abc.service;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.vo.TbTravelogueCustom;

public interface TravelogueService {
    Result<TbTravelogueCustom> listTravelogueByPage(Page page, Order order);
}
