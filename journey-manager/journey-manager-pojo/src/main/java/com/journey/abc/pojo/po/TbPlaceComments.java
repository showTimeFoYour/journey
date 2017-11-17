package com.journey.abc.pojo.po;

import java.util.Date;

public class TbPlaceComments {
    private Long id;

    private Long userId;

    private String title;

    private String content;

    private Boolean tripState;

    private Boolean appraise;

    private Long placeId;

    private Date create;

    private Date update;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Boolean getTripState() {
        return tripState;
    }

    public void setTripState(Boolean tripState) {
        this.tripState = tripState;
    }

    public Boolean getAppraise() {
        return appraise;
    }

    public void setAppraise(Boolean appraise) {
        this.appraise = appraise;
    }

    public Long getPlaceId() {
        return placeId;
    }

    public void setPlaceId(Long placeId) {
        this.placeId = placeId;
    }

    public Date getCreate() {
        return create;
    }

    public void setCreate(Date create) {
        this.create = create;
    }

    public Date getUpdate() {
        return update;
    }

    public void setUpdate(Date update) {
        this.update = update;
    }
}