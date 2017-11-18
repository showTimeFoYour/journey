package com.journey.abc.dao;

import java.util.List;

import com.journey.abc.pojo.po.TbItemComments;
import com.journey.abc.pojo.po.TbItemCommentsExample;
import org.apache.ibatis.annotations.Param;

public interface TbItemCommentsMapper {
    int countByExample(TbItemCommentsExample example);

    int deleteByExample(TbItemCommentsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbItemComments record);

    int insertSelective(TbItemComments record);

    List<TbItemComments> selectByExample(TbItemCommentsExample example);

    TbItemComments selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbItemComments record, @Param("example") TbItemCommentsExample example);

    int updateByExample(@Param("record") TbItemComments record, @Param("example") TbItemCommentsExample example);

    int updateByPrimaryKeySelective(TbItemComments record);

    int updateByPrimaryKey(TbItemComments record);
}