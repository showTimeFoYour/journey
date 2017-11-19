package com.journey.abc.dao;

import com.journey.abc.pojo.vo.TbCommentCustom;

import java.util.List;
import java.util.Map;

public interface TbCommentCustomMapper {
    List<TbCommentCustom> listCommentHotelByPage(Map<String, Object> map);

    Integer countComments(Map<String, Object> map);

    List<TbCommentCustom> listCommentItemByPage(Map<String, Object> map);

    List<TbCommentCustom> listCommentPlaceByPage(Map<String, Object> map);
}
