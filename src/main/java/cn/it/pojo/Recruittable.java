package cn.it.pojo;

import java.util.Date;

public class Recruittable {
    private Integer recruitid;

    private String position;

    private Date time;

    private String introduce;

    private String salary;

    private String location;

    private String username;

    private Status status;

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Integer getRecruitid() {
        return recruitid;
    }

    public void setRecruitid(Integer recruitid) {
        this.recruitid = recruitid;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary == null ? null : salary.trim();
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    @Override
    public String toString() {
        return "Recruittable{" +
                "recruitid=" + recruitid +
                ", position='" + position + '\'' +
                ", time=" + time +
                ", introduce='" + introduce + '\'' +
                ", salary='" + salary + '\'' +
                ", location='" + location + '\'' +
                ", username='" + username + '\'' +
                ", status=" + status +
                '}';
    }
}