package ning.ying.entity;

public class Constellation {
    private int CID;
    private String CName;
    private String CContent;

    public Constellation(int CID, String CName, String CContent) {
        this.CID = CID;
        this.CName = CName;
        this.CContent = CContent;
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

    public String getCContent() {
        return CContent;
    }

    public void setCContent(String CContent) {
        this.CContent = CContent;
    }

    @Override
    public String toString() {
        return "Constellation{" +
                "CID=" + CID +
                ", CName='" + CName + '\'' +
                ", CContent='" + CContent + '\'' +
                '}';
    }
}
