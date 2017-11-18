package com.journey.abc.dao;



import com.journey.abc.pojo.po.TbCity;
import com.journey.abc.pojo.po.TbCityExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbCityMapper {
    int countByExample(TbCityExample example);

    int deleteByExample(TbCityExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbCity record);

    int insertSelective(TbCity record);

    List<TbCity> selectByExample(TbCityExample example);

    TbCity selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbCity record, @Param("example") TbCityExample example);

    int updateByExample(@Param("record") TbCity record, @Param("example") TbCityExample example);

    int updateByPrimaryKeySelective(TbCity record);

    int updateByPrimaryKey(TbCity record);
}