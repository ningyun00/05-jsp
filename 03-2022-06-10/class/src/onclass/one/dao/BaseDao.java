package onclass.one.dao;

import java.sql.*;

public class BaseDao {
    private static Connection connection = null;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/class?characterEncoding=utf-8", "root", "root");
    }

    public static void close(ResultSet resultSet, Statement statement, Connection connection) {
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
