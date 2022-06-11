package ning.ying.entity;

import java.util.Date;

public class Emp {
    private int EID;//编号
    private String EName;//姓名
    private String ESex;//性别
    private String ETelephone;//电话号码
    private Date EHireDate;//生日

    public Emp() {
    }

    public Emp(String EName, String ESex, String ETelephone, Date EHireDate) {
        this.EName = EName;
        this.ESex = ESex;
        this.ETelephone = ETelephone;
        this.EHireDate = EHireDate;
    }

    public Emp(int EID, String EName, String ESex, String ETelephone, Date EHireDate) {
        this.EID = EID;
        this.EName = EName;
        this.ESex = ESex;
        this.ETelephone = ETelephone;
        this.EHireDate = EHireDate;
    }

    public int getEID() {
        return EID;
    }

    public void setEID(int EID) {
        this.EID = EID;
    }

    public String getEName() {
        return EName;
    }

    public void setEName(String EName) {
        this.EName = EName;
    }

    public String getESex() {
        return ESex;
    }

    public void setESex(String ESex) {
        this.ESex = ESex;
    }

    public String getETelephone() {
        return ETelephone;
    }

    public void setETelephone(String ETelephone) {
        this.ETelephone = ETelephone;
    }

    public Date getEHireDate() {
        return EHireDate;
    }

    public void setEHireDate(Date EHireDate) {
        this.EHireDate = EHireDate;
    }

    @Override
    public String toString() {
        return "Emp{" +
                "EID=" + EID +
                ", EName='" + EName + '\'' +
                ", ESex='" + ESex + '\'' +
                ", ETelephone='" + ETelephone + '\'' +
                ", EHireDate=" + EHireDate +
                '}';
    }
}
