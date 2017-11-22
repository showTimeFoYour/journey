package com.journey.abc.pojo.vo;

import com.journey.abc.pojo.po.TbTravelogueComment;

public class TbTravelogueCustom extends TbTravelogueComment {
    private int statu;//判断游记状态   1 个人  2 发布   3删除
    private String title;
    private String userName;

    public int getStatu() {
        return statu;
    }

    public void setStatu(int statu) {
        this.statu = statu;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
