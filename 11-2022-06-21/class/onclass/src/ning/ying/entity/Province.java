package ning.ying.entity;

public class Province {
    private int PID;
    private String PName;

    public Province(int PID, String PName) {
        this.PID = PID;
        this.PName = PName;
    }

    public int getPID() {
        return PID;
    }

    public void setPID(int PID) {
        this.PID = PID;
    }

    public String getPName() {
        return PName;
    }

    public void setPName(String PName) {
        this.PName = PName;
    }
}
