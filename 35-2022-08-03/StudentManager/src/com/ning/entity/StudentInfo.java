package com.ning.entity;

public class StudentInfo {
    private Integer sid; //学号
    private String  sname; //姓名
    private String  sgender; //性别
    private Integer sage; //年龄
    private String  saddress; //家庭住址
    private String  semaile; //电子邮箱

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSgender() {
        return sgender;
    }

    public void setSgender(String sgender) {
        this.sgender = sgender;
    }

    public Integer getSage() {
        return sage;
    }

    public void setSage(Integer sage) {
        this.sage = sage;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

    public String getSemaile() {
        return semaile;
    }

    public void setSemaile(String semaile) {
        this.semaile = semaile;
    }

    @Override
    public String toString() {
        return "StudentInfo{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", sgender='" + sgender + '\'' +
                ", sage=" + sage +
                ", saddress='" + saddress + '\'' +
                ", semaile='" + semaile + '\'' +
                '}';
    }
}
