package com.journey.abc.pojo.po;

import java.util.Date;

public class TbTravelogueComment {
    private Long id;

    private Long travelId;

    private Date created;

    private Date updated;

    private Integer whatday;

    private String description;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTravelId() {
        return travelId;
    }

    public void setTravelId(Long travelId) {
        this.travelId = travelId;
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

    public Integer getWhatday() {
        return whatday;
    }

    public void setWhatday(Integer whatday) {
        this.whatday = whatday;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}