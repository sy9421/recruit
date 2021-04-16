package cn.it.pojo;

import java.util.Date;

public class Jobfair {
    private Integer jobfairid;

    private String jobfairname;

    private Date date;

    private String place;

    private Document document;

    public Document getDocument() {
        return document;
    }

    public void setDocument(Document document) {
        this.document = document;
    }

    public Integer getJobfairid() {
        return jobfairid;
    }

    public void setJobfairid(Integer jobfairid) {
        this.jobfairid = jobfairid;
    }

    public String getJobfairname() {
        return jobfairname;
    }

    public void setJobfairname(String jobfairname) {
        this.jobfairname = jobfairname == null ? null : jobfairname.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    @Override
    public String toString() {
        return "Jobfair{" +
                "jobfairid=" + jobfairid +
                ", jobfairname='" + jobfairname + '\'' +
                ", date=" + date +
                ", place='" + place + '\'' +
                '}';
    }
}