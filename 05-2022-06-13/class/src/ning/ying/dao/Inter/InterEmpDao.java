package ning.ying.dao.Inter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

public interface InterEmpDao {
    public abstract int add(Object object);//增

    public abstract int delete(int ID);//删

    public abstract int update(Object object);//改

    public abstract List<Object> select();//查所有

    public abstract Object select(int ID);//查所有

    public abstract List<Object> obscure(String Name);//模糊查询

    public static Connection connection() {//连接
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/employee?characterEncoding=utf-8", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void close(ResultSet resultSet, Statement statement, Connection connection) {//关闭
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}