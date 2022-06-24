package com.ning.ying.dao;

import com.ning.ying.entity.EabyUser;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * 用户数据层
 */
public class UserDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;
    private static int row = 0;

    /**
     * 登录
     */
    public EabyUser selectLogin(String loginName, String loginPassword) {
        EabyUser eabyUser = new EabyUser();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_user WHERE loginName = ? AND PASSWORD = ?");
            preparedStatement.setString(1, loginName);
            preparedStatement.setString(2, loginPassword);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                eabyUser.setId(resultSet.getInt("id"));
                eabyUser.setLoginName(resultSet.getString("loginName"));
                eabyUser.setPassword(resultSet.getString("password"));
                eabyUser.setUserName(resultSet.getString("userName"));
                eabyUser.setType(resultSet.getInt("type"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyUser;
    }

    public int registUser(EabyUser eabyUser) {
        try {
            connection = BaseDao.getConnection();
            String sql = "INSERT  INTO `eaby_user`VALUES(NULL,?,?,?,1,NULL,?,?,0)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, eabyUser.getLoginName());
            preparedStatement.setString(2, eabyUser.getUserName());
            preparedStatement.setString(3, eabyUser.getPassword());
            preparedStatement.setString(4, eabyUser.getEmail());
            preparedStatement.setString(5, eabyUser.getMobile());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    public boolean registrePeatName(String Name) {
        boolean isTrueOrFalse = true;//无人
        try {
            connection = BaseDao.getConnection();
            String sql = "SELECT COUNT(loginName) FROM eaby_user WHERE loginName = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, Name);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                System.out.println(resultSet.getInt(1));
                if (resultSet.getInt(1) == 1) {
                    isTrueOrFalse = false;//有人
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
