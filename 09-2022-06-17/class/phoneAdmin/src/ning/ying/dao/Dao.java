package ning.ying.dao;

import ning.ying.entity.Phone;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Dao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;
    private static Phone phone = null;
    private static List<Phone> phoneList = null;
    private static int row = 0;

    /**
     * 查询手机信息
     */
    public static List<Phone> queryAllPhone() {
        try {
            //初始化
            phoneList = new ArrayList<>();
            connection = BaseDao.getConnection();
            //操作
            preparedStatement = connection.prepareStatement("SELECT * FROM phone");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String type = resultSet.getString(2);
                String brand = resultSet.getString(3);
                String company = resultSet.getString(4);
                String introduciton = resultSet.getString(5);
                phoneList.add(new Phone(id, type, brand, company, introduciton));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return phoneList;
    }

    /**
     * 根据品牌查询手机
     */
    public static List<Phone> queryBrandPhone(String brandPhone) {
        try {
            //初始化
            phoneList = new ArrayList<>();
            connection = BaseDao.getConnection();
            //操作
            preparedStatement = connection.prepareStatement("SELECT * FROM phone  WHERE brand = ?");
            preparedStatement.setString(1, brandPhone);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String type = resultSet.getString(2);
                String brand = resultSet.getString(3);
                String company = resultSet.getString(4);
                String introduciton = resultSet.getString(5);
                phoneList.add(new Phone(id, type, brand, company, introduciton));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return phoneList;
    }
    
    /**
     * 删除手机信息
     */
    public static int delPhone(int ID) {
        try {
            //格式化
            row = 0;
            connection = BaseDao.getConnection();
            //操作
            preparedStatement = connection.prepareStatement("DELETE FROM phone WHERE id = ?");
            preparedStatement.setInt(1, ID);
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
}
