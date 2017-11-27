package com.journey.abc.web;

import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbItem;
import com.journey.abc.pojo.vo.TbItemCustom;
import com.journey.abc.pojo.vo.TbItemQuery;
import com.journey.abc.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 订单
 * User: Frogzec
 * Date: 2017/11/18
 * Time: 14:34
 * Version:V1.0
 */
@Controller
public class ItemAction {

    Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ItemService itemService;

    //显示所有的订单
    @ResponseBody
    @RequestMapping("/items")
    public Result<TbItemCustom> listItemsByPage(Page page, TbItemQuery tbItemQuery)
    {
        Result<TbItemCustom> list = null;
        try {
            list = itemService.listItemsByPage(page,tbItemQuery);
        }catch (Exception e)
        {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;
    }

    //批量删除订单(批量修改)
    @ResponseBody
    @RequestMapping(value = "/items/batch",method= RequestMethod.POST)
    public  int  removeItemsById(@RequestParam("ids[]")List<Long> ids)
    {
        int   i = 0;
        try {
             i =itemService.updateItemsByIds(ids);
        }catch (Exception e)
        {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return  i;
    }

    //取消订单(修改状态为status=0)
    @ResponseBody
    @RequestMapping(value = "/items/cancel",method= RequestMethod.POST)
    public  int  cancelItemsById(@RequestParam("ids[]")List<Long> ids)
    {
        int   i = 0;
        try {
            i =itemService.cancelItemsByIds(ids);
        }catch (Exception e)
        {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return  i;
    }

    //确认订单(修改状态为status=0)
    @ResponseBody
    @RequestMapping(value = "/items/confirm",method= RequestMethod.POST)
    public  int  confirmItemsById(@RequestParam("ids[]")List<Long> ids)
    {
        int   i = 0;
        try {
            i =itemService.confirmItemsByIds(ids);
        }catch (Exception e)
        {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return  i;
    }

    @RequestMapping(value="/item/edit")
    public String toEdit(Model model , Long id)  {
//       System.out.println(id);
       //根据id查询订单
        TbItemCustom item = itemService.getItemByid(id);
        model.addAttribute("item",item);
        return "item-edit";
   }

    /**
     * 修改信息
     * @param
     * @return
     */
   @ResponseBody
   @RequestMapping(value ="/items/update")
    public int  updateItemById(TbItem tbItem)
   {
       int   i = 0;
       try {
           i =itemService.updateItemById(tbItem);
       }catch (Exception e)
       {
           logger.error(e.getMessage(),e);
           e.printStackTrace();
       }
       return i;
   }



}
