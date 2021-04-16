package cn.it.pojo;

import java.util.Date;

public class Status extends StatusKey {
    private String status;

    private Date start;

    private Date end;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    @Override
    public String toString() {
        return "Status{" +
                "status='" + status + '\'' +
                ", start=" + start +
                ", end=" + end +
                '}';
    }
}