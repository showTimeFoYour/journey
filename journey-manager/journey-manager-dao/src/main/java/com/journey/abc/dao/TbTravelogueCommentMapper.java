package com.journey.abc.dao;

import java.util.List;

import com.journey.abc.pojo.po.TbTravelogueComment;
import com.journey.abc.pojo.po.TbTravelogueCommentExample;
import org.apache.ibatis.annotations.Param;

public interface TbTravelogueCommentMapper {
    int countByExample(TbTravelogueCommentExample example);

    int deleteByExample(TbTravelogueCommentExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbTravelogueComment record);

    int insertSelective(TbTravelogueComment record);

    List<TbTravelogueComment> selectByExampleWithBLOBs(TbTravelogueCommentExample example);

    List<TbTravelogueComment> selectByExample(TbTravelogueCommentExample example);

    TbTravelogueComment selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbTravelogueComment record, @Param("example") TbTravelogueCommentExample example);

    int updateByExampleWithBLOBs(@Param("record") TbTravelogueComment record, @Param("example") TbTravelogueCommentExample example);

    int updateByExample(@Param("record") TbTravelogueComment record, @Param("example") TbTravelogueCommentExample example);

    int updateByPrimaryKeySelective(TbTravelogueComment record);

    int updateByPrimaryKeyWithBLOBs(TbTravelogueComment record);

    int updateByPrimaryKey(TbTravelogueComment record);
}