package com.journey.abc.dao;

import com.journey.abc.pojo.po.TbHotel;
import com.journey.abc.pojo.vo.TbSearchHotelCustom;

import java.util.List;
import java.util.Map;

public interface TbHotelCustomMapper {

    List<TbSearchHotelCustom> getSearchHotelList();
    int countHotel(Map<String, Object> map);

    List<TbHotel> listHotelByPage(Map<String, Object> map);

    Integer delete(List<Integer> ids);

}