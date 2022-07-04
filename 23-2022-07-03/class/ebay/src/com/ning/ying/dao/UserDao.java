package com.ning.ying.dao;

import com.ning.ying.entity.EabyUser;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
                eabyUser.setEmail(resultSet.getString("email"));
                eabyUser.setMobile(resultSet.getString("mobile"));
                eabyUser.setIdentityCode(resultSet.getString("identityCode"));
                eabyUser.setType(resultSet.getInt("type"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyUser;
    }

    /**
     * 查询所有用户用戶
     */
    public List<EabyUser> selectUser(int startLimit, int endLimit) {
        List<EabyUser> eabyUserList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM `eaby_user` LIMIT ?,?");
            preparedStatement.setInt(1, (startLimit - 1) * endLimit);
            preparedStatement.setInt(2, endLimit);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                EabyUser eabyUser = new EabyUser();
                eabyUser.setId(resultSet.getInt("id"));
                eabyUser.setLoginName(resultSet.getString("loginName"));
                eabyUser.setPassword(resultSet.getString("password"));
                eabyUser.setSex(resultSet.getInt("sex"));
                eabyUser.setUserName(resultSet.getString("userName"));
                eabyUser.setType(resultSet.getInt("type"));
                eabyUserList.add(eabyUser);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyUserList;
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

    /**
     * 最大行数
     */
    public int maxRow() {
        int count = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT COUNT(*) FROM `eaby_user`");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                count = resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return count;
    }

    /**
     * 删除用户
     */
    public int deleteUser(int id) {
        int row = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("DELETE  FROM `eaby_user`  WHERE id = ?");
            preparedStatement.setInt(1, id);
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
    /**
     * 根据id查询用户
     */
    public EabyUser selectUser(int id) {
        EabyUser eabyUser = new EabyUser();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM `eaby_user` WHERE id = ?");
            preparedStatement.setInt(1,id);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                eabyUser.setId(resultSet.getInt("id"));
                eabyUser.setLoginName(resultSet.getString("loginName"));
                eabyUser.setPassword(resultSet.getString("password"));
                eabyUser.setSex(resultSet.getInt("sex"));
                eabyUser.setUserName(resultSet.getString("userName"));
                eabyUser.setMobile(resultSet.getString("mobile"));
                eabyUser.setEmail(resultSet.getString("email"));
                eabyUser.setIdentityCode(resultSet.getString("identityCode"));
                eabyUser.setType(resultSet.getInt("type"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyUser;
    }
    /**
     * 根据id查询用户
     */
    public int updateUser(EabyUser eabyUser) {
        int row = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("UPDATE `eaby_user` SET loginName = ?,userName = ?,sex = ?,identityCode = ?,email = ?,mobile = ?,TYPE = ? WHERE id = ?");
            preparedStatement.setString(1,eabyUser.getLoginName());
            preparedStatement.setString(2,eabyUser.getUserName());
            preparedStatement.setInt(3, eabyUser.getSex());
            preparedStatement.setString(4, eabyUser.getIdentityCode());
            preparedStatement.setString(5, eabyUser.getEmail());
            preparedStatement.setString(6, eabyUser.getMobile());
            preparedStatement.setInt(7, eabyUser.getType());
            preparedStatement.setInt(8, eabyUser.getId());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return row  ;
    }
}
