package com.ning.dao;

import com.ning.entity.StudentInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
    private static BaseDao baseDao = new BaseDao();
    private static Connection connection = null;
    private static Statement statement = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    /**
     * 查询所有学生
     */
    public List<StudentInfo> select() {
        List<StudentInfo> studentInfoArrayList = new ArrayList<>();
        try {
            connection = baseDao.getConnection();
            String sql = "SELECT * FROM studentInfo";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                StudentInfo studentInfo = new StudentInfo();
                studentInfo.setSid(resultSet.getInt(1));
                studentInfo.setSname(resultSet.getString(2));
                studentInfo.setSgender(resultSet.getString(3));
                studentInfo.setSage(resultSet.getInt(4));
                studentInfo.setSaddress(resultSet.getString(5));
                studentInfo.setSemaile(resultSet.getString(6));
                studentInfoArrayList.add(studentInfo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(resultSet, preparedStatement, connection);
        }
        return studentInfoArrayList;
    }

    /**
     * 查询单个学生
     */
    public StudentInfo select(Integer sid) {
        StudentInfo studentInfo = new StudentInfo();
        try {
            connection = baseDao.getConnection();
            String sql = "SELECT * FROM studentInfo WHERE sid = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, sid);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                studentInfo.setSid(resultSet.getInt(1));
                studentInfo.setSname(resultSet.getString(2));
                studentInfo.setSgender(resultSet.getString(3));
                studentInfo.setSage(resultSet.getInt(4));
                studentInfo.setSaddress(resultSet.getString(5));
                studentInfo.setSemaile(resultSet.getString(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(resultSet, preparedStatement, connection);
        }
        return studentInfo;
    }

    /**
     * 修改学生
     */
    public Integer update(StudentInfo studentInfo) {
        int row = 0;
        try {
            connection = baseDao.getConnection();
            String sql = "UPDATE studentInfo SET sname = ?,sgender = ?,sage = ?,saddress = ?,semaile = ? WHERE sid = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, studentInfo.getSname());
            preparedStatement.setString(2, studentInfo.getSgender());
            preparedStatement.setInt(3, studentInfo.getSage());
            preparedStatement.setString(4, studentInfo.getSaddress());
            preparedStatement.setString(5, studentInfo.getSemaile());
            preparedStatement.setInt(6, studentInfo.getSid());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
}
