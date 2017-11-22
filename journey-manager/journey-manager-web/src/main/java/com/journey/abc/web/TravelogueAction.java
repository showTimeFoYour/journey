package com.journey.abc.web;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.vo.TbCommentCustom;
import com.journey.abc.pojo.vo.TbTravelogueCustom;
import com.journey.abc.service.CommentService;
import com.journey.abc.service.TravelogueService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TravelogueAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TravelogueService travelogueService;

    @RequestMapping("traveloguesByPage")
    @ResponseBody
    public Result<TbTravelogueCustom> traveloguesByPage(Page page, Order order) {
        Result<TbTravelogueCustom> result = null;
        try {
            result = travelogueService.listTravelogueByPage(page, order);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }
}
