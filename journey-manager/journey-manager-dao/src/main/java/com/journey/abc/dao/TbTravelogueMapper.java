package com.journey.abc.dao;

import java.util.List;

import com.journey.abc.pojo.po.TbTravelogue;
import com.journey.abc.pojo.po.TbTravelogueExample;
import org.apache.ibatis.annotations.Param;

public interface TbTravelogueMapper {
    int countByExample(TbTravelogueExample example);

    int deleteByExample(TbTravelogueExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbTravelogue record);

    int insertSelective(TbTravelogue record);

    List<TbTravelogue> selectByExample(TbTravelogueExample example);

    TbTravelogue selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbTravelogue record, @Param("example") TbTravelogueExample example);

    int updateByExample(@Param("record") TbTravelogue record, @Param("example") TbTravelogueExample example);

    int updateByPrimaryKeySelective(TbTravelogue record);

    int updateByPrimaryKey(TbTravelogue record);
}