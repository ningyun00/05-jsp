package ning.ying.entity;

public class Phone {
    private int id;//-- 手机编号
    private String type;//-- 手机型号
    private String brand;//-- 手机品牌
    private String company;//-- 手机公司
    private String introduciton;//-- 手机介绍

    public Phone() {
    }

    public Phone(int id, String type, String brand, String company, String introduciton) {
        this.id = id;
        this.type = type;
        this.brand = brand;
        this.company = company;
        this.introduciton = introduciton;
    }

    public Phone(String type, String brand, String company, String introduciton) {
        this.type = type;
        this.brand = brand;
        this.company = company;
        this.introduciton = introduciton;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getIntroduciton() {
        return introduciton;
    }

    public void setIntroduciton(String introduciton) {
        this.introduciton = introduciton;
    }

    @Override
    public String toString() {
        return "Phone{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", brand='" + brand + '\'' +
                ", company='" + company + '\'' +
                ", introduciton='" + introduciton + '\'' +
                '}';
    }
}
