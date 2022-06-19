package ning.ying.test;

import ning.ying.dao.C3P0DataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class StudentC3P0DataSourceTest {
    public static void main(String[] args) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = C3P0DataSource.getConnection();
            connection = C3P0DataSource.getConnection();
            connection = C3P0DataSource.getConnection();
            connection = C3P0DataSource.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO student VALUE(NULL,'寜','妖',CURRENT_TIME)");
            if (preparedStatement.executeUpdate() > 0) {
                System.out.println("添加成功");
            } else {
                System.out.println("添加失败");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            C3P0DataSource.close(null, preparedStatement, connection);
        }
    }
}
