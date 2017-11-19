package com.journey.abc.web;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.vo.TbCommentCustom;

import com.journey.abc.service.CommentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class CommentAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private CommentService commentService;

    @RequestMapping("commentsByPage")
    @ResponseBody
    public Result<TbCommentCustom> commentsByPage(Page page, Order order) {
        Result<TbCommentCustom> result = null;
        try {
            result = commentService.listCommentsByPage(page, order);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }
}
