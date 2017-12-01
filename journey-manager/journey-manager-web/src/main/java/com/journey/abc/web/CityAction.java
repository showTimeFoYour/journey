package com.journey.abc.web;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbCity;
import com.journey.abc.pojo.vo.TbItemQuery2;
import com.journey.abc.service.CityService;
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
public class CityAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private CityService cityService;

    @RequestMapping("cityByPage")
    @ResponseBody
    public Result<TbCity> cityByPage(Page page, Order order, TbItemQuery2 query) {
        Result<TbCity> result = null;
        try {
            result = cityService.listCityByPage(page, order,query);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }

    @ResponseBody
    @RequestMapping("/cityitem")
    public int saveItem(TbCity tbCity){
        int i = 0;
        try {
            i = cityService.saveCity(tbCity);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }


    @RequestMapping(value = {"city/remove"}, method = RequestMethod.POST)
    @ResponseBody
    public int cityRemove(@RequestParam("ids[]") List<Integer> ids) {
//        List<Integer> ids=new ArrayList<Integer>();
//        ids.add(1);
//        ids.add(2);
        System.out.println(ids);
        int i= 0;
        try {
          //  String url= request.getRequestURI();
            i = cityService.delete(ids);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
