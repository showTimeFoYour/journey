package com.journey.abc.dao;

import com.journey.abc.pojo.po.TbPlace;

import java.util.List;
import java.util.Map;

public interface TbPlaceCustomMapper {
    int countPlace(Map<String, Object> map);

    List<TbPlace> listPlaceByPage(Map<String, Object> map);

    Integer delete(List<Integer> ids);

}