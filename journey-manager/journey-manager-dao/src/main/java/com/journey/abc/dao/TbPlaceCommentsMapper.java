package com.journey.abc.dao;

import com.journey.abc.pojo.po.TbPlaceComments;
import com.journey.abc.pojo.po.TbPlaceCommentsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbPlaceCommentsMapper {
    int countByExample(TbPlaceCommentsExample example);

    int deleteByExample(TbPlaceCommentsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbPlaceComments record);

    int insertSelective(TbPlaceComments record);

    List<TbPlaceComments> selectByExample(TbPlaceCommentsExample example);

    TbPlaceComments selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbPlaceComments record, @Param("example") TbPlaceCommentsExample example);

    int updateByExample(@Param("record") TbPlaceComments record, @Param("example") TbPlaceCommentsExample example);

    int updateByPrimaryKeySelective(TbPlaceComments record);

    int updateByPrimaryKey(TbPlaceComments record);
}