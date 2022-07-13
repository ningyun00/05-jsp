package com.ning.entity;

/**
 * 图书
 */
public class Book {
    private Integer id;//图书编号
    private String bookName;//图书名称
    private String authorName;//作者名称
    private Double price;//图书售价
    private Integer bookType;//图书类型
    private String introduce;//图书介绍
    private String imageName;//图书图片
    private Integer delete;//图书是否被删除

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getBookType() {
        return bookType;
    }

    public void setBookType(Integer bookType) {
        this.bookType = bookType;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public Integer getDelete() {
        return delete;
    }

    public void setDelete(Integer delete) {
        this.delete = delete;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", bookName='" + bookName + '\'' +
                ", authorName='" + authorName + '\'' +
                ", price=" + price +
                ", bookType=" + bookType +
                ", introduce='" + introduce + '\'' +
                ", imageName='" + imageName + '\'' +
                ", delete=" + delete +
                '}';
    }
}
