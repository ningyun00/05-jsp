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
}
