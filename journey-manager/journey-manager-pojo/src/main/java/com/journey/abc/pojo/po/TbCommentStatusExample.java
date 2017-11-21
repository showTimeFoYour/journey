package com.journey.abc.pojo.po;

import java.util.ArrayList;
import java.util.List;

public class TbCommentStatusExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbCommentStatusExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andCommentIdIsNull() {
            addCriterion("comment_id is null");
            return (Criteria) this;
        }

        public Criteria andCommentIdIsNotNull() {
            addCriterion("comment_id is not null");
            return (Criteria) this;
        }

        public Criteria andCommentIdEqualTo(Long value) {
            addCriterion("comment_id =", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdNotEqualTo(Long value) {
            addCriterion("comment_id <>", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdGreaterThan(Long value) {
            addCriterion("comment_id >", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdGreaterThanOrEqualTo(Long value) {
            addCriterion("comment_id >=", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdLessThan(Long value) {
            addCriterion("comment_id <", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdLessThanOrEqualTo(Long value) {
            addCriterion("comment_id <=", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdIn(List<Long> values) {
            addCriterion("comment_id in", values, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdNotIn(List<Long> values) {
            addCriterion("comment_id not in", values, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdBetween(Long value1, Long value2) {
            addCriterion("comment_id between", value1, value2, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdNotBetween(Long value1, Long value2) {
            addCriterion("comment_id not between", value1, value2, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentStatusIsNull() {
            addCriterion("comment_status is null");
            return (Criteria) this;
        }

        public Criteria andCommentStatusIsNotNull() {
            addCriterion("comment_status is not null");
            return (Criteria) this;
        }

        public Criteria andCommentStatusEqualTo(Integer value) {
            addCriterion("comment_status =", value, "commentStatus");
            return (Criteria) this;
        }

        public Criteria andCommentStatusNotEqualTo(Integer value) {
            addCriterion("comment_status <>", value, "commentStatus");
            return (Criteria) this;
        }

        public Criteria andCommentStatusGreaterThan(Integer value) {
            addCriterion("comment_status >", value, "commentStatus");
            return (Criteria) this;
        }

        public Criteria andCommentStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("comment_status >=", value, "commentStatus");
            return (Criteria) this;
        }

        public Criteria andCommentStatusLessThan(Integer value) {
            addCriterion("comment_status <", value, "commentStatus");
            return (Criteria) this;
        }

        public Criteria andCommentStatusLessThanOrEqualTo(Integer value) {
            addCriterion("comment_status <=", value, "commentStatus");
            return (Criteria) this;
        }

        public Criteria andCommentStatusIn(List<Integer> values) {
            addCriterion("comment_status in", values, "commentStatus");
            return (Criteria) this;
        }

        public Criteria andCommentStatusNotIn(List<Integer> values) {
            addCriterion("comment_status not in", values, "commentStatus");
            return (Criteria) this;
        }

        public Criteria andCommentStatusBetween(Integer value1, Integer value2) {
            addCriterion("comment_status between", value1, value2, "commentStatus");
            return (Criteria) this;
        }

        public Criteria andCommentStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("comment_status not between", value1, value2, "commentStatus");
            return (Criteria) this;
        }

        public Criteria andCommentUpIsNull() {
            addCriterion("comment_up is null");
            return (Criteria) this;
        }

        public Criteria andCommentUpIsNotNull() {
            addCriterion("comment_up is not null");
            return (Criteria) this;
        }

        public Criteria andCommentUpEqualTo(Long value) {
            addCriterion("comment_up =", value, "commentUp");
            return (Criteria) this;
        }

        public Criteria andCommentUpNotEqualTo(Long value) {
            addCriterion("comment_up <>", value, "commentUp");
            return (Criteria) this;
        }

        public Criteria andCommentUpGreaterThan(Long value) {
            addCriterion("comment_up >", value, "commentUp");
            return (Criteria) this;
        }

        public Criteria andCommentUpGreaterThanOrEqualTo(Long value) {
            addCriterion("comment_up >=", value, "commentUp");
            return (Criteria) this;
        }

        public Criteria andCommentUpLessThan(Long value) {
            addCriterion("comment_up <", value, "commentUp");
            return (Criteria) this;
        }

        public Criteria andCommentUpLessThanOrEqualTo(Long value) {
            addCriterion("comment_up <=", value, "commentUp");
            return (Criteria) this;
        }

        public Criteria andCommentUpIn(List<Long> values) {
            addCriterion("comment_up in", values, "commentUp");
            return (Criteria) this;
        }

        public Criteria andCommentUpNotIn(List<Long> values) {
            addCriterion("comment_up not in", values, "commentUp");
            return (Criteria) this;
        }

        public Criteria andCommentUpBetween(Long value1, Long value2) {
            addCriterion("comment_up between", value1, value2, "commentUp");
            return (Criteria) this;
        }

        public Criteria andCommentUpNotBetween(Long value1, Long value2) {
            addCriterion("comment_up not between", value1, value2, "commentUp");
            return (Criteria) this;
        }

        public Criteria andCommentDownIsNull() {
            addCriterion("comment_down is null");
            return (Criteria) this;
        }

        public Criteria andCommentDownIsNotNull() {
            addCriterion("comment_down is not null");
            return (Criteria) this;
        }

        public Criteria andCommentDownEqualTo(Long value) {
            addCriterion("comment_down =", value, "commentDown");
            return (Criteria) this;
        }

        public Criteria andCommentDownNotEqualTo(Long value) {
            addCriterion("comment_down <>", value, "commentDown");
            return (Criteria) this;
        }

        public Criteria andCommentDownGreaterThan(Long value) {
            addCriterion("comment_down >", value, "commentDown");
            return (Criteria) this;
        }

        public Criteria andCommentDownGreaterThanOrEqualTo(Long value) {
            addCriterion("comment_down >=", value, "commentDown");
            return (Criteria) this;
        }

        public Criteria andCommentDownLessThan(Long value) {
            addCriterion("comment_down <", value, "commentDown");
            return (Criteria) this;
        }

        public Criteria andCommentDownLessThanOrEqualTo(Long value) {
            addCriterion("comment_down <=", value, "commentDown");
            return (Criteria) this;
        }

        public Criteria andCommentDownIn(List<Long> values) {
            addCriterion("comment_down in", values, "commentDown");
            return (Criteria) this;
        }

        public Criteria andCommentDownNotIn(List<Long> values) {
            addCriterion("comment_down not in", values, "commentDown");
            return (Criteria) this;
        }

        public Criteria andCommentDownBetween(Long value1, Long value2) {
            addCriterion("comment_down between", value1, value2, "commentDown");
            return (Criteria) this;
        }

        public Criteria andCommentDownNotBetween(Long value1, Long value2) {
            addCriterion("comment_down not between", value1, value2, "commentDown");
            return (Criteria) this;
        }

        public Criteria andCommentStateIsNull() {
            addCriterion("comment_state is null");
            return (Criteria) this;
        }

        public Criteria andCommentStateIsNotNull() {
            addCriterion("comment_state is not null");
            return (Criteria) this;
        }

        public Criteria andCommentStateEqualTo(Byte value) {
            addCriterion("comment_state =", value, "commentState");
            return (Criteria) this;
        }

        public Criteria andCommentStateNotEqualTo(Byte value) {
            addCriterion("comment_state <>", value, "commentState");
            return (Criteria) this;
        }

        public Criteria andCommentStateGreaterThan(Byte value) {
            addCriterion("comment_state >", value, "commentState");
            return (Criteria) this;
        }

        public Criteria andCommentStateGreaterThanOrEqualTo(Byte value) {
            addCriterion("comment_state >=", value, "commentState");
            return (Criteria) this;
        }

        public Criteria andCommentStateLessThan(Byte value) {
            addCriterion("comment_state <", value, "commentState");
            return (Criteria) this;
        }

        public Criteria andCommentStateLessThanOrEqualTo(Byte value) {
            addCriterion("comment_state <=", value, "commentState");
            return (Criteria) this;
        }

        public Criteria andCommentStateIn(List<Byte> values) {
            addCriterion("comment_state in", values, "commentState");
            return (Criteria) this;
        }

        public Criteria andCommentStateNotIn(List<Byte> values) {
            addCriterion("comment_state not in", values, "commentState");
            return (Criteria) this;
        }

        public Criteria andCommentStateBetween(Byte value1, Byte value2) {
            addCriterion("comment_state between", value1, value2, "commentState");
            return (Criteria) this;
        }

        public Criteria andCommentStateNotBetween(Byte value1, Byte value2) {
            addCriterion("comment_state not between", value1, value2, "commentState");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}