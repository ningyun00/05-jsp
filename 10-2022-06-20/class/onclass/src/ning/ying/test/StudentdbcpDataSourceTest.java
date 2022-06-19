package ning.ying.test;

import ning.ying.dao.DbcpDataSource;

import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class StudentdbcpDataSourceTest {
    public static void main(String[] args) throws FileNotFoundException {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = DbcpDataSource.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO student VALUE(NULL,'寜','妖',CURRENT_TIME)");
            if (preparedStatement.executeUpdate() > 0) {
                System.out.println("添加成功");
            } else {
                System.out.println("添加失败");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DbcpDataSource.close(null, preparedStatement, connection);
        }
    }
}
