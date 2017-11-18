package com.journey.abc.dao;

import java.util.List;

import com.journey.abc.pojo.po.TbPlace;
import com.journey.abc.pojo.po.TbPlaceExample;
import org.apache.ibatis.annotations.Param;

public interface TbPlaceMapper {
    int countByExample(TbPlaceExample example);

    int deleteByExample(TbPlaceExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbPlace record);

    int insertSelective(TbPlace record);

    List<TbPlace> selectByExample(TbPlaceExample example);

    TbPlace selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbPlace record, @Param("example") TbPlaceExample example);

    int updateByExample(@Param("record") TbPlace record, @Param("example") TbPlaceExample example);

    int updateByPrimaryKeySelective(TbPlace record);

    int updateByPrimaryKey(TbPlace record);
}