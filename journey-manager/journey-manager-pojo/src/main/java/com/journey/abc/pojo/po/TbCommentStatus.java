package com.journey.abc.pojo.po;

public class TbCommentStatus {
    private Long id;

    private Long commentId;

    private Integer commentStatus;

    private Long commentUp;

    private Long commentDown;

    private Byte commentState;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCommentId() {
        return commentId;
    }

    public void setCommentId(Long commentId) {
        this.commentId = commentId;
    }

    public Integer getCommentStatus() {
        return commentStatus;
    }

    public void setCommentStatus(Integer commentStatus) {
        this.commentStatus = commentStatus;
    }

    public Long getCommentUp() {
        return commentUp;
    }

    public void setCommentUp(Long commentUp) {
        this.commentUp = commentUp;
    }

    public Long getCommentDown() {
        return commentDown;
    }

    public void setCommentDown(Long commentDown) {
        this.commentDown = commentDown;
    }

    public Byte getCommentState() {
        return commentState;
    }

    public void setCommentState(Byte commentState) {
        this.commentState = commentState;
    }
}