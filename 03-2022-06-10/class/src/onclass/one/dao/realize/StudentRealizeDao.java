package onclass.one.dao.realize;

import onclass.one.dao.BaseDao;
import onclass.one.dao.Inter.StudentDaoInter;
import onclass.one.entity.Students;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class StudentRealizeDao implements StudentDaoInter {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static Statement statement = null;
    private static ResultSet resultSet = null;
    private static int row = 0;
    private static List<Students> studentsArrayList = new ArrayList<>();

    @Override
    public int add(Students students) {
        row = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO Student VALUES(NULL,?,?,?)");
            preparedStatement.setString(1, students.getSName());
            preparedStatement.setString(2, students.getSSex());
            preparedStatement.setDate(3, new java.sql.Date(students.getDate().getTime()));
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    @Override
    public int delete(int ID) {
        row = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("DELETE FROM Student WHERE SID = ?");
            preparedStatement.setInt(1, ID);
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    @Override
    public List<Students> selectAll() {
        List<Students> list = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM Student");
            while (resultSet.next()) {
                int id = resultSet.getInt("SID");
                String name = resultSet.getString("SName");
                String sex = resultSet.getString("SSex");
                Date date = resultSet.getDate("SDate");
                Students students = new Students(id, name, sex, date);
                list.add(students);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, statement, connection);
        }
        return list;
    }
}
