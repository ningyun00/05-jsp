package ning.ying.test;

import ning.ying.dao.BaseDao;
import ning.ying.dao.StudentDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class StudentConnectionWrapTest {
    public static void main(String[] args) {
        StudentDataSource studentDataSource = new StudentDataSource();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = studentDataSource.getConnection();
            connection = studentDataSource.getConnection();
            connection = studentDataSource.getConnection();
            connection = studentDataSource.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO student VALUE(NULL,'寜','妖',CURRENT_TIME)");
            if (preparedStatement.executeUpdate() > 0) {
                System.out.println("添加成功");
            } else {
                System.out.println("添加失败");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
    }
}
