package com.journey.abc.web;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbUser;
import com.journey.abc.pojo.vo.TbUserQuery;
import com.journey.abc.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

//后台用户Action
@Controller
public class ManagerUserAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserService userService;

    //查询所有用户
    @ResponseBody
    @RequestMapping("/userlist")
    public Result<TbUser> listItemsByPage(Page page, Order order, TbUserQuery query){
        Result<TbUser> list = null;
        try {
            list = userService.listUsersByPage(page,order,query);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        System.out.println();
        return list;
    }

    //删除用户操作users/batch
    @ResponseBody
    @RequestMapping("/users/batchRemove")
    // @RequestParam把长整型的数组直接转成List，底层有地方要用list，这里用这springMVC的转换器先转化了，方便了
    public int updateBatchbatchRemove(@RequestParam("ids[]") List<Long> ids){
        int i = 0;
        try {
            i = userService.updateBatchbatchRemove(ids);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    //提升用户权限至管理员操作
    @ResponseBody
    @RequestMapping("users/batchUp")
    // @RequestParam把长整型的数组直接转成List，底层有地方要用list，这里用这springMVC的转换器先转化了，方便了
    public int updateBatchbatchUp(@RequestParam("ids[]") List<Long> ids){
        int i = 0;
        try {
            i = userService.updateBatchbatchUp(ids);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }


}
