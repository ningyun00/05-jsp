package com.ning.dao;

import com.ning.entity.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
    private static BaseDao baseDao = new BaseDao();
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;
    private static String sql = null;
    private static Student student = null;

    public List<Student> select() {
        List<Student> studentArrayList = new ArrayList<>();
        try {
            Connection connection = baseDao.getConnection();
            sql = "SELECT * FROM studentInfo";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                student = new Student();
                student.setSid(resultSet.getInt(1));
                student.setSname(resultSet.getString(2));
                student.setSgender(resultSet.getString(3));
                student.setSage(resultSet.getInt(4));
                student.setSaddress(resultSet.getString(5));
                student.setSemaile(resultSet.getString(6));
                studentArrayList.add(student);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(resultSet, preparedStatement, connection);
        }
        return studentArrayList;
    }

    public Student select(Integer sid) {
        try {
            Connection connection = baseDao.getConnection();
            sql = "SELECT * FROM studentInfo WHERE sid = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, sid);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                student = new Student();
                student.setSid(resultSet.getInt(1));
                student.setSname(resultSet.getString(2));
                student.setSgender(resultSet.getString(3));
                student.setSage(resultSet.getInt(4));
                student.setSaddress(resultSet.getString(5));
                student.setSemaile(resultSet.getString(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(resultSet, preparedStatement, connection);
        }
        return student;
    }

    public Integer update(Student student) {
        int row = 0;
        try {
            connection = baseDao.getConnection();
            sql = "UPDATE studentInfo SET sname = ?,sgender = ?,sage = ?,saddress = ?,semaile = ? WHERE sid = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, student.getSname());
            preparedStatement.setString(2, student.getSgender());
            preparedStatement.setInt(3, student.getSage());
            preparedStatement.setString(4, student.getSaddress());
            preparedStatement.setString(5, student.getSemaile());
            preparedStatement.setInt(6, student.getSid());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
}
