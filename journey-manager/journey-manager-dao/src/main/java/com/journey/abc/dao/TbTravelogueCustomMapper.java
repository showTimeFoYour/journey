package com.journey.abc.dao;

import com.journey.abc.pojo.vo.TbTravelogueCustom;

import java.util.List;
import java.util.Map;

public interface TbTravelogueCustomMapper {
    int countTravelogue(Map<String, Object> map);

    List<TbTravelogueCustom> listTravelogueByPage(Map<String, Object> map);
}
