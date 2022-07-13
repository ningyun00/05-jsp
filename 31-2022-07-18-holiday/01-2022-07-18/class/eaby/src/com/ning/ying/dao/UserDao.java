package com.ning.ying.dao;

import com.ning.ying.entity.User;
import com.ning.ying.inter.UserInter;
import com.ning.ying.tool.Tool;

import java.sql.Timestamp;
import java.util.List;

/**
 * 用户操作
 */
public class UserDao implements UserInter {
    /**
     * 查询所有用户
     */
    @Override
    public List<Object> selectUser() {
        /*User userObject = new User();
        try {
            Tool.connection = new BaseDao().getConnect();
            Tool.sql = "SELECT * FROM `eaby_user` WHERE eaby_user.`delete` = 0";
            Tool.preparedStatement = Tool.connection.prepareStatement(Tool.sql);
            Tool.resultSet = Tool.preparedStatement.executeQuery();
            while (Tool.resultSet.next()) {
                userObject.setId(Tool.resultSet.getInt("id"));
                userObject.setLoginName(Tool.resultSet.getString("loginName"));
                userObject.setUserName(Tool.resultSet.getString("userName"));
                userObject.setPassword(Tool.resultSet.getString("password"));
                userObject.setSex(Tool.resultSet.getInt("sex"));
                userObject.setIdentityCode(Tool.resultSet.getString("identityCode"));
                userObject.setEmail(Tool.resultSet.getString("email"));
                userObject.setMobile(Tool.resultSet.getString("mobile"));
                userObject.setType(Tool.resultSet.getInt("type"));
                userObject.setDelete(Tool.resultSet.getInt("delete"));
                userObject.setCreateTime(Tool.resultSet.getTimestamp("createTime"));
                Timestamp deleteTime = Tool.resultSet.getTimestamp("deleteTime");
                if (deleteTime != null) {
                    userObject.setDeleteTime(deleteTime);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Tool.baseDao.close(null, Tool.preparedStatement, Tool.connection);
        }*/
        return null;
    }

    /**
     * 查询登录用户
     */
    @Override
    public Object loginUser(User user) {
        User userObject = new User();
        try {
            Tool.connection = new BaseDao().getConnect();
            Tool.sql = "SELECT * FROM `eaby_user` WHERE loginName = ? AND eaby_user.`delete` = 0";
            Tool.preparedStatement = Tool.connection.prepareStatement(Tool.sql);
            Tool.preparedStatement.setString(1, user.getLoginName());
            Tool.resultSet = Tool.preparedStatement.executeQuery();
            while (Tool.resultSet.next()) {
                userObject.setId(Tool.resultSet.getInt("id"));
                userObject.setLoginName(Tool.resultSet.getString("loginName"));
                userObject.setUserName(Tool.resultSet.getString("userName"));
                userObject.setPassword(Tool.resultSet.getString("password"));
                userObject.setSex(Tool.resultSet.getInt("sex"));
                userObject.setIdentityCode(Tool.resultSet.getString("identityCode"));
                userObject.setEmail(Tool.resultSet.getString("email"));
                userObject.setMobile(Tool.resultSet.getString("mobile"));
                userObject.setType(Tool.resultSet.getInt("type"));
                userObject.setDelete(Tool.resultSet.getInt("delete"));
                userObject.setCreateTime(Tool.resultSet.getTimestamp("createTime"));
                Timestamp deleteTime = Tool.resultSet.getTimestamp("deleteTime");
                if (deleteTime != null) {
                    userObject.setDeleteTime(deleteTime);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Tool.baseDao.close(null, Tool.preparedStatement, Tool.connection);
        }
        return userObject;
    }

    /**
     * 查询用户名是否重复
     */
    @Override
    public String selectUser(User user) {
        String loginName = null;
        try {
            Tool.connection = new BaseDao().getConnect();
            Tool.sql = "SELECT * FROM `eaby_user` WHERE loginName = ?  AND eaby_user.`delete` = 0";
            Tool.preparedStatement = Tool.connection.prepareStatement(Tool.sql);
            Tool.preparedStatement.setString(1, user.getLoginName());
            Tool.resultSet = Tool.preparedStatement.executeQuery();
            if (Tool.resultSet.next()) {
                loginName = Tool.resultSet.getString("loginName");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Tool.baseDao.close(null, Tool.preparedStatement, Tool.connection);
        }
        return loginName;
    }

    /**
     * 添加用户
     */
    @Override
    public int addUser(User user) {
        User addUser = new User();
        Tool.row = 0;
        try {
            Tool.connection = new BaseDao().getConnect();
            Tool.sql = "INSERT INTO `eaby_user` VALUES(NULL,?,?,?,DEFAULT,NULL,?,?,DEFAULT,DEFAULT,CURRENT_TIME,NULL)";
            Tool.preparedStatement = Tool.connection.prepareStatement(Tool.sql);
            Tool.preparedStatement.setString(1, user.getLoginName());
            Tool.preparedStatement.setString(2, user.getUserName());
            Tool.preparedStatement.setString(3, user.getPassword());
            Tool.preparedStatement.setString(4, user.getEmail());
            Tool.preparedStatement.setString(5, user.getMobile());
            Tool.row = Tool.preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Tool.baseDao.close(null, Tool.preparedStatement, Tool.connection);
        }
        return Tool.row;
    }

    /**
     * 根据Id删除用户
     */
    @Override
    public int deleteId(int Id) {
        Tool.row = 0;
        try {
            Tool.connection = new BaseDao().getConnect();
            Tool.sql = "DELETE FROM `eaby`.`eaby_user` WHERE `id` = ?";
            Tool.preparedStatement = Tool.connection.prepareStatement(Tool.sql);
            Tool.preparedStatement.setInt(1, Id);
            Tool.row = Tool.preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Tool.baseDao.close(null, Tool.preparedStatement, Tool.connection);
        }
        return Tool.row;
    }
}
