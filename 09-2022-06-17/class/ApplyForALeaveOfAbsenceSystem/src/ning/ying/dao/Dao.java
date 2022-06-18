package ning.ying.dao;

import ning.ying.entity.FurLoughApply;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 数据库操作层
 */
public class Dao {
    private static Connection connection = null;//空连接对象
    private static PreparedStatement preparedStatement = null;//空数据操作
    private static ResultSet resultSet = null;//空结果集
    private static List<FurLoughApply> furArrayList = null;//空数组
    private static int row = 0;//空行数

    public static List<FurLoughApply> selectFur() {
        try {
            //初始化
            connection = BaseDao.getConnection();
            furArrayList = new ArrayList<>();
            row = 0;
            //操作
            preparedStatement = connection.prepareStatement("SELECT * FROM furloughapply");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String proposer = resultSet.getString(2);
                String dept = resultSet.getString(3);
                Date applyDate = resultSet.getDate(4);
                java.util.Date startTime = new java.util.Date(resultSet.getTimestamp(5).getTime());
                java.util.Date lastTime = new java.util.Date(resultSet.getTimestamp(6).getTime());
                String type = resultSet.getString(7);
                furArrayList.add(new FurLoughApply(id, proposer, dept, applyDate, startTime, lastTime, type));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return furArrayList;
    }

    public static int addFur(FurLoughApply furLoughApply) {
        try {
            row = 0;
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO furloughapply VALUE(NULL,?,?,?,?,?,?)");
            preparedStatement.setString(1, furLoughApply.getProposer());
            preparedStatement.setString(2, furLoughApply.getDept());
            preparedStatement.setDate(3, new Date(furLoughApply.getApplyDate().getTime()));
            preparedStatement.setTimestamp(4, new Timestamp(furLoughApply.getStartTime().getTime()));
            preparedStatement.setTimestamp(5, new Timestamp(furLoughApply.getLasTime().getTime()));
            preparedStatement.setString(6, furLoughApply.getType());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
}
