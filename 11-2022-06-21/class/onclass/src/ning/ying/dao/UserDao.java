package ning.ying.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    /**
     * 查询用户名是否被使用
     */
    public static boolean showUser(String UName) {
        boolean isTrueOrFalse = false; //有用户为true，没有为false
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT COUNT(UName) FROM USER WHERE UName = ?");
            preparedStatement.setString(1, UName);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                if (resultSet.getInt(1)==0){
                    isTrueOrFalse = true;
                    System.out.println(resultSet.getInt(1));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return isTrueOrFalse;
    }
}
