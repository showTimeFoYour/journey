package com.journey.abc.web;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbPlace;
import com.journey.abc.pojo.vo.TbItemQuery4;
import com.journey.abc.service.PlaceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
public class PlaceAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private PlaceService placeService;

    @RequestMapping("placeByPage")
    @ResponseBody
    public Result<TbPlace> hotelByPage(Page page, Order order,TbItemQuery4 query) {
        Result<TbPlace> result = null;
        try {
            result = placeService.listPlaceByPage(page, order,query);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }


    @RequestMapping(value = {"place/remove"}, method = RequestMethod.POST)
    @ResponseBody
    public int hotelRemove(@RequestParam("ids[]") List<Integer> ids) {
//        List<Integer> ids=new ArrayList<Integer>();
//        ids.add(1);
//        ids.add(2);
        System.out.println(ids);
        int i= 0;
        try {
          //  String url= request.getRequestURI();
            i = placeService.delete(ids);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
    @ResponseBody
    @RequestMapping("/placeitem")
    public int saveItem(TbPlace tbPlace){
        int i = 0;
        try {
            i = placeService.savePlace(tbPlace);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
