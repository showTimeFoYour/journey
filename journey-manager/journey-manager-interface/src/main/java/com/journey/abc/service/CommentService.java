package com.journey.abc.service;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.vo.TbCommentCustom;
import com.journey.abc.pojo.vo.TbCommentQuery;

import java.util.List;

public interface CommentService {
    Result<TbCommentCustom> listCommentsByPage(Page page, Order order, TbCommentQuery query);



    int updateComentsByComent_Id(List<Long> ids, String url);
}
