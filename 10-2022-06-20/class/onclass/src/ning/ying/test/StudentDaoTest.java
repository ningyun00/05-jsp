package ning.ying.test;

import ning.ying.dao.BaseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class StudentDaoTest {
    public static void main(String[] args) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = BaseDao.getConnection();
            connection = BaseDao.getConnection();
            connection = BaseDao.getConnection();
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
