package com.journey.abc.protal.web;

import com.journey.abc.pojo.po.TbItem;
import com.journey.abc.pojo.vo.TbShow;
import com.journey.abc.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String save(TbItem tbItem, TbShow show ) {
        int i = 0;
        if(show != null)
        {
         tbItem.setContectDesc(show.getName()+","+show.getPhone());
        }
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
}
