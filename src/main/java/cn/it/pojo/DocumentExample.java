package cn.it.pojo;

import java.util.ArrayList;
import java.util.List;

public class DocumentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DocumentExample() {
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

        public Criteria andDocumentidIsNull() {
            addCriterion("documentId is null");
            return (Criteria) this;
        }

        public Criteria andDocumentidIsNotNull() {
            addCriterion("documentId is not null");
            return (Criteria) this;
        }

        public Criteria andDocumentidEqualTo(Integer value) {
            addCriterion("documentId =", value, "documentid");
            return (Criteria) this;
        }

        public Criteria andDocumentidNotEqualTo(Integer value) {
            addCriterion("documentId <>", value, "documentid");
            return (Criteria) this;
        }

        public Criteria andDocumentidGreaterThan(Integer value) {
            addCriterion("documentId >", value, "documentid");
            return (Criteria) this;
        }

        public Criteria andDocumentidGreaterThanOrEqualTo(Integer value) {
            addCriterion("documentId >=", value, "documentid");
            return (Criteria) this;
        }

        public Criteria andDocumentidLessThan(Integer value) {
            addCriterion("documentId <", value, "documentid");
            return (Criteria) this;
        }

        public Criteria andDocumentidLessThanOrEqualTo(Integer value) {
            addCriterion("documentId <=", value, "documentid");
            return (Criteria) this;
        }

        public Criteria andDocumentidIn(List<Integer> values) {
            addCriterion("documentId in", values, "documentid");
            return (Criteria) this;
        }

        public Criteria andDocumentidNotIn(List<Integer> values) {
            addCriterion("documentId not in", values, "documentid");
            return (Criteria) this;
        }

        public Criteria andDocumentidBetween(Integer value1, Integer value2) {
            addCriterion("documentId between", value1, value2, "documentid");
            return (Criteria) this;
        }

        public Criteria andDocumentidNotBetween(Integer value1, Integer value2) {
            addCriterion("documentId not between", value1, value2, "documentid");
            return (Criteria) this;
        }

        public Criteria andDocumentnameIsNull() {
            addCriterion("documentName is null");
            return (Criteria) this;
        }

        public Criteria andDocumentnameIsNotNull() {
            addCriterion("documentName is not null");
            return (Criteria) this;
        }

        public Criteria andDocumentnameEqualTo(String value) {
            addCriterion("documentName =", value, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameNotEqualTo(String value) {
            addCriterion("documentName <>", value, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameGreaterThan(String value) {
            addCriterion("documentName >", value, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameGreaterThanOrEqualTo(String value) {
            addCriterion("documentName >=", value, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameLessThan(String value) {
            addCriterion("documentName <", value, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameLessThanOrEqualTo(String value) {
            addCriterion("documentName <=", value, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameLike(String value) {
            addCriterion("documentName like", value, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameNotLike(String value) {
            addCriterion("documentName not like", value, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameIn(List<String> values) {
            addCriterion("documentName in", values, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameNotIn(List<String> values) {
            addCriterion("documentName not in", values, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameBetween(String value1, String value2) {
            addCriterion("documentName between", value1, value2, "documentname");
            return (Criteria) this;
        }

        public Criteria andDocumentnameNotBetween(String value1, String value2) {
            addCriterion("documentName not between", value1, value2, "documentname");
            return (Criteria) this;
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