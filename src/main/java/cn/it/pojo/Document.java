package cn.it.pojo;

public class Document {
    private Integer documentid;

    private String documentname;

    private Integer jobfairid;

    public Integer getDocumentid() {
        return documentid;
    }

    public void setDocumentid(Integer documentid) {
        this.documentid = documentid;
    }

    public String getDocumentname() {
        return documentname;
    }

    public void setDocumentname(String documentname) {
        this.documentname = documentname == null ? null : documentname.trim();
    }

    public Integer getJobfairid() {
        return jobfairid;
    }

    public void setJobfairid(Integer jobfairid) {
        this.jobfairid = jobfairid;
    }
}