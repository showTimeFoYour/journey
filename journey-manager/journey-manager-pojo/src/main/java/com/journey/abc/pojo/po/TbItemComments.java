package com.journey.abc.pojo.po;

import java.util.Date;

public class TbItemComments {
    private Long id;

    private Long userId;

    private String title;

    private String content;

    private Date tripTime;

    private Boolean apppraise;

    private String itemId;

    private Date created;

    private Date updated;

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

    public Date getTripTime() {
        return tripTime;
    }

    public void setTripTime(Date tripTime) {
        this.tripTime = tripTime;
    }

    public Boolean getApppraise() {
        return apppraise;
    }

    public void setApppraise(Boolean apppraise) {
        this.apppraise = apppraise;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId == null ? null : itemId.trim();
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