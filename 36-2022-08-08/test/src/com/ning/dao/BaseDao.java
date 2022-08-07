package com.ning.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * 数据库连接关闭操作
 */
public class BaseDao {
    /**
     * c3p0连接池
     */
    //private static ComboPooledDataSource dataSource = new ComboPooledDataSource();

    /**
     * 获取连接对象
     */
    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");//加载驱动
            connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/studentDB?characterEncoding=utf-8", "root", "root");//创建连接对象
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    /**
     * 关闭数据库连接
     */
    public void close(ResultSet resultSet, Statement statement, Connection connection) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
