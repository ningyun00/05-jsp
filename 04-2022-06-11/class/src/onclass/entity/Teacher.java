package onclass.entity;

public class Teacher {
    private int TID;//教师编号
    private String TName;//教师姓名
    private String TSubject;//教师科目

    public Teacher() {
    }

    public Teacher(String TName, String TSubject) {
        this.TName = TName;
        this.TSubject = TSubject;
    }

    public Teacher(int TID, String TName, String TSubject) {
        this.TID = TID;
        this.TName = TName;
        this.TSubject = TSubject;
    }

    public int getTID() {
        return TID;
    }

    public void setTID(int TID) {
        this.TID = TID;
    }

    public String getTName() {
        return TName;
    }

    public void setTName(String TName) {
        this.TName = TName;
    }

    public String getTSubject() {
        return TSubject;
    }

    public void setTSubject(String TSubject) {
        this.TSubject = TSubject;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "TID=" + TID +
                ", TName='" + TName + '\'' +
                ", TSubject='" + TSubject + '\'' +
                '}';
    }
}
