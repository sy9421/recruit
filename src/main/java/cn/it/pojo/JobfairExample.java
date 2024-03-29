package cn.it.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class JobfairExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public JobfairExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andJobfairidIsNull() {
            addCriterion("jobFairId is null");
            return (Criteria) this;
        }

        public Criteria andJobfairidIsNotNull() {
            addCriterion("jobFairId is not null");
            return (Criteria) this;
        }

        public Criteria andJobfairidEqualTo(Integer value) {
            addCriterion("jobFairId =", value, "jobfairid");
            return (Criteria) this;
        }

        public Criteria andJobfairidNotEqualTo(Integer value) {
            addCriterion("jobFairId <>", value, "jobfairid");
            return (Criteria) this;
        }

        public Criteria andJobfairidGreaterThan(Integer value) {
            addCriterion("jobFairId >", value, "jobfairid");
            return (Criteria) this;
        }

        public Criteria andJobfairidGreaterThanOrEqualTo(Integer value) {
            addCriterion("jobFairId >=", value, "jobfairid");
            return (Criteria) this;
        }

        public Criteria andJobfairidLessThan(Integer value) {
            addCriterion("jobFairId <", value, "jobfairid");
            return (Criteria) this;
        }

        public Criteria andJobfairidLessThanOrEqualTo(Integer value) {
            addCriterion("jobFairId <=", value, "jobfairid");
            return (Criteria) this;
        }

        public Criteria andJobfairidIn(List<Integer> values) {
            addCriterion("jobFairId in", values, "jobfairid");
            return (Criteria) this;
        }

        public Criteria andJobfairidNotIn(List<Integer> values) {
            addCriterion("jobFairId not in", values, "jobfairid");
            return (Criteria) this;
        }

        public Criteria andJobfairidBetween(Integer value1, Integer value2) {
            addCriterion("jobFairId between", value1, value2, "jobfairid");
            return (Criteria) this;
        }

        public Criteria andJobfairidNotBetween(Integer value1, Integer value2) {
            addCriterion("jobFairId not between", value1, value2, "jobfairid");
            return (Criteria) this;
        }

        public Criteria andJobfairnameIsNull() {
            addCriterion("jobFairName is null");
            return (Criteria) this;
        }

        public Criteria andJobfairnameIsNotNull() {
            addCriterion("jobFairName is not null");
            return (Criteria) this;
        }

        public Criteria andJobfairnameEqualTo(String value) {
            addCriterion("jobFairName =", value, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameNotEqualTo(String value) {
            addCriterion("jobFairName <>", value, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameGreaterThan(String value) {
            addCriterion("jobFairName >", value, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameGreaterThanOrEqualTo(String value) {
            addCriterion("jobFairName >=", value, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameLessThan(String value) {
            addCriterion("jobFairName <", value, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameLessThanOrEqualTo(String value) {
            addCriterion("jobFairName <=", value, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameLike(String value) {
            addCriterion("jobFairName like", value, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameNotLike(String value) {
            addCriterion("jobFairName not like", value, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameIn(List<String> values) {
            addCriterion("jobFairName in", values, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameNotIn(List<String> values) {
            addCriterion("jobFairName not in", values, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameBetween(String value1, String value2) {
            addCriterion("jobFairName between", value1, value2, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andJobfairnameNotBetween(String value1, String value2) {
            addCriterion("jobFairName not between", value1, value2, "jobfairname");
            return (Criteria) this;
        }

        public Criteria andDateIsNull() {
            addCriterion("date is null");
            return (Criteria) this;
        }

        public Criteria andDateIsNotNull() {
            addCriterion("date is not null");
            return (Criteria) this;
        }

        public Criteria andDateEqualTo(Date value) {
            addCriterionForJDBCDate("date =", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("date <>", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateGreaterThan(Date value) {
            addCriterionForJDBCDate("date >", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("date >=", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateLessThan(Date value) {
            addCriterionForJDBCDate("date <", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("date <=", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateIn(List<Date> values) {
            addCriterionForJDBCDate("date in", values, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("date not in", values, "date");
            return (Criteria) this;
        }

        public Criteria andDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("date between", value1, value2, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("date not between", value1, value2, "date");
            return (Criteria) this;
        }

        public Criteria andPlaceIsNull() {
            addCriterion("place is null");
            return (Criteria) this;
        }

        public Criteria andPlaceIsNotNull() {
            addCriterion("place is not null");
            return (Criteria) this;
        }

        public Criteria andPlaceEqualTo(String value) {
            addCriterion("place =", value, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceNotEqualTo(String value) {
            addCriterion("place <>", value, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceGreaterThan(String value) {
            addCriterion("place >", value, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceGreaterThanOrEqualTo(String value) {
            addCriterion("place >=", value, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceLessThan(String value) {
            addCriterion("place <", value, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceLessThanOrEqualTo(String value) {
            addCriterion("place <=", value, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceLike(String value) {
            addCriterion("place like", value, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceNotLike(String value) {
            addCriterion("place not like", value, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceIn(List<String> values) {
            addCriterion("place in", values, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceNotIn(List<String> values) {
            addCriterion("place not in", values, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceBetween(String value1, String value2) {
            addCriterion("place between", value1, value2, "place");
            return (Criteria) this;
        }

        public Criteria andPlaceNotBetween(String value1, String value2) {
            addCriterion("place not between", value1, value2, "place");
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