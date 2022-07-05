package com.ning.ying.dao;
import com.ning.ying.entity.EabyOrderDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 数据访问层--- 订单详细
 */
public class OrderDetailDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;
    /**
     * 添加
     */
    public int addOrderDetail(EabyOrderDetail od) {
        int row = 0;
        try {

            connection = BaseDao.getConnection();
            String sql = "insert into Eaby_Order_Detail values(null,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, od.getOrderId());
            preparedStatement.setInt(2, od.getProductId());
            preparedStatement.setInt(3, od.getQuantity());
            preparedStatement.setDouble(4, od.getCost());

            row = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
}
