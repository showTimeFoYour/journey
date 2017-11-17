package com.journey.abc.dao;

import com.journey.abc.pojo.po.TbHotel;
import com.journey.abc.pojo.po.TbHotelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbHotelMapper {
    int countByExample(TbHotelExample example);

    int deleteByExample(TbHotelExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbHotel record);

    int insertSelective(TbHotel record);

    List<TbHotel> selectByExample(TbHotelExample example);

    TbHotel selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbHotel record, @Param("example") TbHotelExample example);

    int updateByExample(@Param("record") TbHotel record, @Param("example") TbHotelExample example);

    int updateByPrimaryKeySelective(TbHotel record);

    int updateByPrimaryKey(TbHotel record);
}