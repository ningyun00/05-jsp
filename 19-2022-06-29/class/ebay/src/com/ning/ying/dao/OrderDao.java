package com.ning.ying.dao;

import com.ning.ying.entity.EabyOrder;

import java.sql.*;


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
}
