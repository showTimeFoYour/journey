package com.journey.abc.pojo.vo;

import com.journey.abc.pojo.po.TbCommentStatus;

import java.util.Date;
/**
 * userId  用户
 * title  标题
 * content  评论内容
 * tripSate  是否去过
 * appraise   评价星级
 * tripTime    旅行时间
 * */
public class TbCommentCustom extends TbCommentStatus{


    private Long userId;

    private String title;

    private String content;

    private Boolean tripState;

    private Integer appraise;
    private Date tripTime;

    private String hotelName;



    private String itemName;

    private String placeName;

    private Date created;
    private Date updated;

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName;
    }





    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Boolean getTripState() {
        return tripState;
    }

    public void setTripState(Boolean tripState) {
        this.tripState = tripState;
    }

    public Integer getAppraise() {
        return appraise;
    }

    public void setAppraise(Integer appraise) {
        this.appraise = appraise;
    }

    public Date getTripTime() {
        return tripTime;
    }

    public void setTripTime(Date tripTime) {
        this.tripTime = tripTime;
    }



    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }
}
