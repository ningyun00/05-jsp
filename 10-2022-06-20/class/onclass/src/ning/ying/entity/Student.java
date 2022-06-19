package ning.ying.entity;

import java.util.Date;

public class Student {
    private int SID;
    private String  SName;
    private String  SSex;
    private Date SDate;

    public Student() {
    }

    public Student(String SName, String SSex, Date SDate) {
        this.SName = SName;
        this.SSex = SSex;
        this.SDate = SDate;
    }

    public Student(int SID, String SName, String SSex, Date SDate) {
        this.SID = SID;
        this.SName = SName;
        this.SSex = SSex;
        this.SDate = SDate;
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

    public Date getSDate() {
        return SDate;
    }

    public void setSDate(Date SDate) {
        this.SDate = SDate;
    }

    @Override
    public String toString() {
        return "Student{" +
                "SID=" + SID +
                ", SName='" + SName + '\'' +
                ", SSex='" + SSex + '\'' +
                ", SDate=" + SDate +
                '}';
    }
}
