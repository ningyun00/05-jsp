package ning.ying.dao.Inter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

/**
 * 接口模板
 */
public interface InterEmpDao {
    public abstract int add(Object object);//增

    public abstract int delete(int ID);//删

    public abstract int update(Object object);//改

    public abstract List<Object> select();//查所有

    public abstract Object select(int ID);//查所有

    public abstract List<Object> obscure(String Name);//模糊查询

    public abstract List<Object> Limit(int startLimit, int endLimit);//分页

    /**
     * 连接对象
     */
    public static Connection connection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/employee?characterEncoding=utf-8", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    /**
     * 连接对象关闭
     */
    public static void close(ResultSet resultSet, Statement statement, Connection connection) {
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