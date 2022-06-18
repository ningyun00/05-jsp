package ning.ying.entity;

import java.util.Date;

/**
 * 请假实体类
 */
public class FurLoughApply {
    private int ID;//编号
    private String proposer;//姓名
    private String dept;//部门
    private Date applyDate;//申请日期
    private Date startTime;//开始日期
    private Date lasTime;//结束日期
    private String type;//休假类型

    public FurLoughApply() {
    }

    public FurLoughApply(String proposer, String dept, Date applyDate, Date startTime, Date lasTime, String type) {
        this.proposer = proposer;
        this.dept = dept;
        this.applyDate = applyDate;
        this.startTime = startTime;
        this.lasTime = lasTime;
        this.type = type;
    }

    public FurLoughApply(int ID, String proposer, String dept, Date applyDate, Date startTime, Date lasTime, String type) {
        this.ID = ID;
        this.proposer = proposer;
        this.dept = dept;
        this.applyDate = applyDate;
        this.startTime = startTime;
        this.lasTime = lasTime;
        this.type = type;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getProposer() {
        return proposer;
    }

    public void setProposer(String proposer) {
        this.proposer = proposer;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public Date getApplyDate() {
        return applyDate;
    }

    public void setApplyDate(Date applyDate) {
        this.applyDate = applyDate;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getLasTime() {
        return lasTime;
    }

    public void setLasTime(Date lasTime) {
        this.lasTime = lasTime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "FurLoughApply{" +
                "ID=" + ID +
                ", proposer='" + proposer + '\'' +
                ", dept='" + dept + '\'' +
                ", applyDate=" + applyDate +
                ", startTime=" + startTime +
                ", lasTime=" + lasTime +
                ", type='" + type + '\'' +
                '}';
    }
}