package com.journey.abc.service;

import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbUser;
import com.journey.abc.pojo.vo.TbUserQuery;

import java.util.List;

public interface UserService {
    //前台根据用户名查用户
    TbUser findByUsername(TbUser tbUser);
    //前台用户注册
    boolean addUser(TbUser tbUser);

    //用户后台分页
    Result<TbUser> listUsersByPage(Page page, Order order, TbUserQuery query);

    //后台删除用户
    int updateBatchbatchRemove(List<Long> ids);

    //提升用户权限至管理员操作
    int updateBatchbatchUp(List<Long> ids);
}
