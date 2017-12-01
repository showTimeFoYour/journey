package com.journey.abc.dao;

import com.journey.abc.pojo.po.TbCity;

import java.util.List;
import java.util.Map;

public interface TbCityCustomMapper {
   /* List<TbCommentCustom> listCommentHotelByPage(Map<String, Object> map);

    Integer countComments(Map<String, Object> map);

    List<TbCommentCustom> listCommentItemByPage(Map<String, Object> map);

    List<TbCommentCustom> listCommentPlaceByPage(Map<String, Object> map);*/

    int countCity(Map<String, Object> map);

    List<TbCity> listCityByPage(Map<String, Object> map);

    Integer delete(List<Integer> ids);

    /*int saveCity(TbCity tbCity);*/
}