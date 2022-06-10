package onclass.one.entity;

import java.util.Date;

public class Students {
    private int SID;//编号
    private String SName;//姓名
    private String SSex;//性别
    private Date date;//生日

    public Students() {
    }

    public Students(String SName, String SSex, Date date) {
        this.SName = SName;
        this.SSex = SSex;
        this.date = date;
    }

    public Students(int SID, String SName, String SSex, Date date) {
        this.SID = SID;
        this.SName = SName;
        this.SSex = SSex;
        this.date = date;
    }

    public int getSID() {
        return SID;
    }

    public void setSID(int SID) {
        this.SID = SID;
    }

    public String getSName() {
        return SName;
    }

    public void setSName(String SName) {
        this.SName = SName;
    }

    public String getSSex() {
        return SSex;
    }

    public void setSSex(String SSex) {
        this.SSex = SSex;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Students{" +
                "SID=" + SID +
                ", SName='" + SName + '\'' +
                ", SSex='" + SSex + '\'' +
                ", date=" + date +
                '}';
    }
}
