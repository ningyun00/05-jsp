package onclass.dao.realize;

import onclass.dao.BaseDao;
import onclass.dao.inter.TeacherDaoInter;
import onclass.entity.Teacher;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TeacherDaoRealize implements TeacherDaoInter {
    private static Connection connection = null;//连接对象
    private static PreparedStatement preparedStatement = null;//预编译对象
    private static ResultSet resultSet = null;//结果集
    private static List<Teacher> teacherArrayList = new ArrayList<>();//查询对象
    private static int row = 0;//受影响的行数

    @Override
    public int addTeacher(Teacher teacher) {//增
        row = 0;
        try {
            connection = BaseDao.getConnection();//获取连接对象
            preparedStatement = connection.prepareStatement("INSERT INTO teacher VALUES(NULL,?,?)");
            preparedStatement.setString(1, teacher.getTName());
            preparedStatement.setString(2, teacher.getTSubject());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    @Override
    public int deleteTeacher(int TID) {//删
        row = 0;
        try {
            connection = BaseDao.getConnection();//获取连接对象
            preparedStatement = connection.prepareStatement("DELETE FROM teacher WHERE TID = ?");
            preparedStatement.setInt(1, TID);
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    @Override
    public List<Teacher> selectTeacher() {//查
        List<Teacher> teacherArrayList = new ArrayList<>();//查询对象
        try {
            connection = BaseDao.getConnection();//获取连接对象
            preparedStatement = connection.prepareStatement("SELECT * FROM teacher");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                teacherArrayList.add(new Teacher(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return teacherArrayList;
    }

    @Override
    public int updateTeacher(Teacher teacher) {//改
        row = 0;
        try {
            connection = BaseDao.getConnection();//获取连接对象
            preparedStatement = connection.prepareStatement("UPDATE teacher SET TName = ?,TSubject = ? WHERE TID = ?");
            preparedStatement.setString(1, teacher.getTName());
            preparedStatement.setString(2, teacher.getTSubject());
            preparedStatement.setInt(3, teacher.getTID());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
}
