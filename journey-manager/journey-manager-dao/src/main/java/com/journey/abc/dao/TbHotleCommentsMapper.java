package com.journey.abc.dao;

import com.journey.abc.pojo.po.TbHotleComments;
import com.journey.abc.pojo.po.TbHotleCommentsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbHotleCommentsMapper {
    int countByExample(TbHotleCommentsExample example);

    int deleteByExample(TbHotleCommentsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbHotleComments record);

    int insertSelective(TbHotleComments record);

    List<TbHotleComments> selectByExample(TbHotleCommentsExample example);

    TbHotleComments selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbHotleComments record, @Param("example") TbHotleCommentsExample example);

    int updateByExample(@Param("record") TbHotleComments record, @Param("example") TbHotleCommentsExample example);

    int updateByPrimaryKeySelective(TbHotleComments record);

    int updateByPrimaryKey(TbHotleComments record);
}