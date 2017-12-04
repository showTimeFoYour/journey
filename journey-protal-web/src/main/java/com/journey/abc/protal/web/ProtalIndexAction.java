package com.journey.abc.protal.web;

import com.journey.abc.pojo.po.TbItem;
import com.journey.abc.pojo.po.TbUser;
import com.journey.abc.pojo.vo.TbItemCustom;
import com.journey.abc.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ProtalIndexAction {
   // @Autowired
   // private ContentService contentService;

    @Autowired
    private ItemService itemService;


    @RequestMapping("/")
    public String portalIndex(Model model) {
//        Long id = PropKit.use("ftp.properties").getLong("ftp.gallery");
//           List<TbContent> list=contentService.listContentByCid(id);
//       model.addAttribute("ad1List",list);
        return "index";
    }
    @RequestMapping("/{page}")
    public String page(@PathVariable("page") String page){
        return page;
    }

    @RequestMapping("/item/user-order")
    public String  getItemById(HttpSession session,Model model )
    {
        TbUser sessionUser = (TbUser)session.getAttribute("sessionUser");
        Long userId = sessionUser.getId();
        //根据ID查询订单List
        List<TbItemCustom>  itemList =  itemService.listItemsByUserId(userId);
        System.out.println(itemList);
        model.addAttribute("itemList",itemList);

        return "user-order";
    }

    @RequestMapping("/toOrder")
    public String toOrder(TbItem tbItem, Model model){

        //将数据存到request域
         model.addAttribute("item",tbItem);
        return "order";
    }



}
