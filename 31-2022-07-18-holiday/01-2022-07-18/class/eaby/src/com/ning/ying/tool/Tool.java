package com.ning.ying.tool;


import com.ning.ying.dao.BaseDao;
import com.ning.ying.dao.UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Tool {
    //数据库操作
    public static BaseDao baseDao = new BaseDao();
    //连接对象
    public static Connection connection = null;
    //预编译对象
    public static PreparedStatement preparedStatement = null;
    //结果集
    public static ResultSet resultSet = null;
    //数据库执行语句
    public static String sql = null;
    //受影响的行数
    public static int row = 0;
    //记住登录的cookie名称
    public static String cookieName = "user";
    /**
     * 对象
     */
    public static Object object = null;
    public static UserDao userDao = new UserDao();
}
