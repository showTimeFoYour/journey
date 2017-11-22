package com.journey.abc.web;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.vo.TbCommentCustom;

import com.journey.abc.pojo.vo.TbCommentQuery;
import com.journey.abc.service.CommentService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class CommentAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private CommentService commentService;

    @RequestMapping("commentsByPage")
    @ResponseBody
    public Result<TbCommentCustom> commentsByPage(Page page, Order order, TbCommentQuery query) {
        Result<TbCommentCustom> result = null;
        try {
            result = commentService.listCommentsByPage(page, order,query);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 批量修改
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping(value = {"comments/bacth","comments/down"}, method = RequestMethod.POST)
    public int getBacth(@RequestParam("ids[]") List<Long> ids, HttpServletRequest request) {

        int i = 0;
        try {
            String url= request.getRequestURI();

            i = commentService.updateComentsByComent_Id(ids,url);

        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;


    }


}
