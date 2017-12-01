package com.journey.abc.web;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbHotel;
import com.journey.abc.pojo.vo.TbItemQuery3;
import com.journey.abc.service.HotelService;
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
public class HotelAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private HotelService hotelService;

    @RequestMapping("hotelByPage")
    @ResponseBody
    public Result<TbHotel> hotelByPage(Page page, Order order, TbItemQuery3 query) {
        Result<TbHotel> result = null;
        try {
            result = hotelService.listHotelByPage(page, order,query);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }

    @ResponseBody
    @RequestMapping("/hotelitem")
    public int saveItem(TbHotel tbHotel){
        int i = 0;
        try {
            i = hotelService.saveCity(tbHotel);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }


    @RequestMapping(value = {"hotel/remove"}, method = RequestMethod.POST)
    @ResponseBody
    public int hotelRemove(@RequestParam("ids[]") List<Integer> ids) {
//        List<Integer> ids=new ArrayList<Integer>();
//        ids.add(1);
//        ids.add(2);
        System.out.println(ids);
        int i= 0;
        try {
          //  String url= request.getRequestURI();
            i = hotelService.delete(ids);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
