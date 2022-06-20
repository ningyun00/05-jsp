package ning.ying.entity;
public class User {
    private int UID;
    private String UName;
    private String UPassword;

    public User(int UID, String UName, String UPassword) {
        this.UID = UID;
        this.UName = UName;
        this.UPassword = UPassword;
    }

    public int getUID() {
        return UID;
    }

    public void setUID(int UID) {
        this.UID = UID;
    }

    public String getUName() {
        return UName;
    }

    public void setUName(String UName) {
        this.UName = UName;
    }

    public String getUPassword() {
        return UPassword;
    }

    public void setUPassword(String UPassword) {
        this.UPassword = UPassword;
    }
}
