package com.ning.ying.entity;

import java.util.Date;
/** 实体类---订单表 */
public class EabyOrder {
    private Integer id;//编号
    private Integer userId;//用户id编号
    private String loginName;//用户登录名
    private String userAddress;//用户地址
    private Date createTime;//下单时间（创建时间）
    private Double cost;//总消费（订单总金额）
    private Integer status;//1:待审核 2:审核通过3:配货 4:卖家已发货 5:已收货
    private String serialNumber;//订单号

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }
}
