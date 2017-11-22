package com.journey.abc.pojo.vo;

import com.journey.abc.pojo.po.TbItem;

/**
 * User: Frogzec
 * Date: 2017/11/18
 * Time: 16:26
 * Version:V1.0
 */
public class TbItemCustom extends TbItem {
    //下订单的用户名字
    private String userName;
    private String statusName;

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
