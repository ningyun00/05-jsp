package underclass.entity;

public class Product {
    private int pid;
    private String pname;
    private float price;
    private String pdesc;

    public Product() {
    }

    public Product(String pname, float price, String pdesc) {
        this.pname = pname;
        this.price = price;
        this.pdesc = pdesc;
    }

    public Product(int pid, String pname, float price, String pdesc) {
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        this.pdesc = pdesc;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", price=" + price +
                ", pdesc='" + pdesc + '\'' +
                '}';
    }
}
