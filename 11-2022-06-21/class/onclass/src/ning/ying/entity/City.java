package ning.ying.entity;

public class City {
    private int CID;
    private String CName;
    private int PID;

    public City(int CID, String CName, int PID) {
        this.CID = CID;
        this.CName = CName;
        this.PID = PID;
    }

    public int getCID() {
        return CID;
    }

    public void setCID(int CID) {
        this.CID = CID;
    }

    public String getCName() {
        return CName;
    }

    public void setCName(String CName) {
        this.CName = CName;
    }

    public int getPID() {
        return PID;
    }

    public void setPID(int PID) {
        this.PID = PID;
    }
}
