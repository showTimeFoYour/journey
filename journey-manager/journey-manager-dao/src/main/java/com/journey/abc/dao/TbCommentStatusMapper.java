package com.journey.abc.dao;

import com.journey.abc.pojo.po.TbCommentStatus;
import com.journey.abc.pojo.po.TbCommentStatusExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbCommentStatusMapper {
    int countByExample(TbCommentStatusExample example);

    int deleteByExample(TbCommentStatusExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbCommentStatus record);

    int insertSelective(TbCommentStatus record);

    List<TbCommentStatus> selectByExample(TbCommentStatusExample example);

    TbCommentStatus selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbCommentStatus record, @Param("example") TbCommentStatusExample example);

    int updateByExample(@Param("record") TbCommentStatus record, @Param("example") TbCommentStatusExample example);

    int updateByPrimaryKeySelective(TbCommentStatus record);

    int updateByPrimaryKey(TbCommentStatus record);
}