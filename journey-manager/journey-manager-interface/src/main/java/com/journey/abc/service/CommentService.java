package com.journey.abc.service;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.vo.TbCommentCustom;

public interface CommentService {
    Result<TbCommentCustom> listCommentsByPage(Page page, Order order);
}
