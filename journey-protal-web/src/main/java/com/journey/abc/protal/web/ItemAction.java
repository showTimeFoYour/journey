package com.journey.abc.protal.web;

import com.journey.abc.pojo.po.TbItem;
import com.journey.abc.pojo.po.TbUser;
import com.journey.abc.pojo.vo.TbShow;
import com.journey.abc.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * User: Frogzec
 * Date: 2017/11/24
 * Time: 22:42
 * Version:V1.0
 */
@Controller
public class ItemAction {

    @Autowired
    private ItemService itemService;

    @RequestMapping(value="/item/add")
    public String save(HttpSession session,TbShow show,TbItem tbItem) {
       TbUser sessionUser = (TbUser)session.getAttribute("sessionUser");
        Long userId = sessionUser.getId();
        //从session中获得userID存入订单
        tbItem.setUserId(userId);
        int i = 0;
        if(show != null)
        {
         tbItem.setContectDesc(show.getName()+","+show.getPhone());
        }
        //存储
        if(tbItem != null)
            i =itemService.saveItems(tbItem);
       if(i > 0)
       {
           return  "successSubmit";
       }
        else
       {
           return "order";
       }

    }

    /**
     * 跳转到搜索页面
     * @return
     */
    @ResponseBody
    @RequestMapping(value="toSearch")
    public String toSearch(@RequestParam("name") String name)
    {
        System.out.println(name);

        return "ok";
    }
    /**
     * 取消订单
     */
    @ResponseBody
    @RequestMapping(value="/item/cacelItemById")
    public String cacel(@RequestParam("itemId")  Long id)
    {
        //修改订单ID状态
        List<Long> ids = new ArrayList<Long>();
        ids.add(id);
        int i = itemService.updateItemsByIds(ids);
        if(i>0)
        {
            return "ok";
        }
        else {
            return "error";
        }
    }


    /**
     * 确认支付订单
     */
    @ResponseBody
    @RequestMapping(value="/item/confirmById")
    public String payItemCofirm(@RequestParam("itemId")  Long id)
    {
        //确认支付订单
        List<Long> ids = new ArrayList<Long>();
        ids.add(id);
        int i = itemService.confirmItemsByIds(ids);
        if(i>0)
        {
            return "ok";
        }
        else {
            return "error";
        }
    }



}
