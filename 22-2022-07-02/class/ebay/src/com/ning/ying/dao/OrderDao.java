package com.ning.ying.dao;

import com.ning.ying.entity.EabyOrder;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class OrderDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    /**
     * 添加
     */
    public int addOrder(EabyOrder order) {
        int row = 0;
        try {
            connection = BaseDao.getConnection();
            String sql = "insert into Eaby_Order values(null,?,?,?,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, order.getUserId());
            preparedStatement.setString(2, order.getLoginName());
            preparedStatement.setString(3, order.getUserAddress());
            preparedStatement.setTimestamp(4, new Timestamp(order.getCreateTime().getTime()));
            preparedStatement.setDouble(5, order.getCost());
            preparedStatement.setInt(6, order.getStatus());
            preparedStatement.setString(7, order.getSerialNumber());
            row = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    /**
     * 获取最大订单号
     */
    public int getMaxId() {
        int id = 0;
        String sql = " select max(id) from eaby_order";
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                id = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return id;
    }
    /**
     * 分页查询
     */
    public List<EabyOrder> getUserOrder(int id, int startLimit, int endLimit) {
        List<EabyOrder> eabyOrderArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM `eaby_order` WHERE userId = ? ORDER BY createTime DESC LIMIT ?,?");
            preparedStatement.setInt(1, id);
            preparedStatement.setInt(2, (startLimit - 1) * endLimit);
            preparedStatement.setInt(3, endLimit);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                EabyOrder eabyOrder = new EabyOrder();
                eabyOrder.setId(resultSet.getInt("id"));
                eabyOrder.setUserId(resultSet.getInt("userId"));
                eabyOrder.setLoginName(resultSet.getString("loginName"));
                eabyOrder.setUserAddress(resultSet.getString("userAddress"));
                eabyOrder.setCreateTime(resultSet.getTimestamp("createTime"));
                eabyOrder.setCost(resultSet.getDouble("cost"));
                eabyOrder.setStatus(resultSet.getInt("status"));
                eabyOrder.setSerialNumber(resultSet.getString("serialNumber"));
                eabyOrderArrayList.add(eabyOrder);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyOrderArrayList;
    }

    /**
     * 获取指定用户的订单
     */
    public List<EabyOrder> getUserOrder() {
        List<EabyOrder> eabyOrderArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM `eaby_order`ORDER BY createTime DESC");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                EabyOrder eabyOrder = new EabyOrder();
                eabyOrder.setId(resultSet.getInt("id"));
                eabyOrder.setUserId(resultSet.getInt("userId"));
                eabyOrder.setLoginName(resultSet.getString("loginName"));
                eabyOrder.setUserAddress(resultSet.getString("userAddress"));
                eabyOrder.setCreateTime(resultSet.getTimestamp("createTime"));
                eabyOrder.setCost(resultSet.getDouble("cost"));
                eabyOrder.setStatus(resultSet.getInt("status"));
                eabyOrder.setSerialNumber(resultSet.getString("serialNumber"));
                eabyOrderArrayList.add(eabyOrder);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyOrderArrayList;
    }/**
     * 获取指定用户的订单
     */
    public List<EabyOrder> getUserOrder(int startLimit,int endLimit) {
        List<EabyOrder> eabyOrderArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM `eaby_order`ORDER BY createTime DESC LIMIT ?,?");
            preparedStatement.setInt(1,(startLimit-1)*endLimit);
            preparedStatement.setInt(2,endLimit);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                EabyOrder eabyOrder = new EabyOrder();
                eabyOrder.setId(resultSet.getInt("id"));
                eabyOrder.setUserId(resultSet.getInt("userId"));
                eabyOrder.setLoginName(resultSet.getString("loginName"));
                eabyOrder.setUserAddress(resultSet.getString("userAddress"));
                eabyOrder.setCreateTime(resultSet.getTimestamp("createTime"));
                eabyOrder.setCost(resultSet.getDouble("cost"));
                eabyOrder.setStatus(resultSet.getInt("status"));
                eabyOrder.setSerialNumber(resultSet.getString("serialNumber"));
                eabyOrderArrayList.add(eabyOrder);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyOrderArrayList;
    }
    /**
     * 单个用户最大行数
     */
    public int maxRow(int id) {
        int count = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT COUNT(*) FROM `eaby_order` WHERE userId = ?");
            preparedStatement.setInt(1,id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                count = resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return count;
    }
    /**
     * 所有最大行数
     */
    public int maxRow() {
        int count = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT COUNT(*) FROM `eaby_order`");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                count = resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return count;
    }
}
