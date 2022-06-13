package ning.ying.dao.realize;

import ning.ying.dao.Inter.InterEmpDao;
import ning.ying.entity.Emp;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 数据操作对象
 */
public class RealizeEmpDao implements InterEmpDao {
    private static Connection connection = null;//空
    private static PreparedStatement preparedStatement = null;//空
    private static Statement statement = null;
    private static ResultSet resultSet = null;//空
    private static List<Object> objectList = new ArrayList<>();
    private static Emp emp = null;
    private static int row = 0;

    /**
     * 添加
     */
    @Override
    public int add(Object object) {//添加
        try {
            //初始化
            connection = InterEmpDao.connection();
            emp = (Emp) object;
            row = 0;
            //执行
            preparedStatement = connection.prepareStatement("INSERT INTO emp VALUES(NULL,?,?,?,?)");
            preparedStatement.setString(1, emp.getEName());
            preparedStatement.setString(2, emp.getESex());
            preparedStatement.setString(3, emp.getETelephone());
            preparedStatement.setDate(4, new Date(emp.getEHireDate().getTime()));
            //影响
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            InterEmpDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    /**
     * 删除
     */
    @Override
    public int delete(int EID) {//删除
        try {
            //初始化
            connection = InterEmpDao.connection();
            row = 0;
            //执行语句
            preparedStatement = connection.prepareStatement("DELETE FROM emp WHERE EID = ?");
            preparedStatement.setInt(1, EID);
            //影响
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            InterEmpDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    /**
     * 修改
     */
    @Override
    public int update(Object object) {//修改
        try {
            //初始化
            connection = InterEmpDao.connection();
            emp = (Emp) object;//修改
            row = 0;
            //执行
            preparedStatement = connection.prepareStatement("UPDATE emp SET EName = ?,ESix = ?,ETelephone = ?,EHireDate = ? WHERE EID = ?");
            preparedStatement.setString(1, emp.getEName());
            preparedStatement.setString(2, emp.getESex());
            preparedStatement.setString(3, emp.getETelephone());
            preparedStatement.setDate(4, new Date(emp.getEHireDate().getTime()));
            preparedStatement.setInt(5, emp.getEID());
            //影响
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            InterEmpDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    /**
     * 查询所有
     */
    @Override
    public List<Object> select() {//查询所有
        try {
            //初始化
            connection = InterEmpDao.connection();
            objectList = new ArrayList<>();
            //执行
            preparedStatement = connection.prepareStatement("SELECT * FROM emp LIMIT 0,10");
            //影响
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String six = resultSet.getString(3);
                String telephone = resultSet.getString(4);
                Date hireDate = resultSet.getDate(5);
                objectList.add(new Emp(id, name, six, telephone, hireDate));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            InterEmpDao.close(resultSet, preparedStatement, connection);
        }
        return objectList;//传出后记得修改自己需要的类型
    }

    /**
     * 根据ID查询
     */
    @Override
    public Object select(int EID) {//查ID的
        try {
            //初始化
            connection = InterEmpDao.connection();
            emp = null;
            //执行
            preparedStatement = connection.prepareStatement("SELECT * FROM emp WHERE EID = ? LIMIT 0,10");
            preparedStatement.setInt(1, EID);
            //影响
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String six = resultSet.getString(3);
                String telephone = resultSet.getString(4);
                Date hireDate = resultSet.getDate(5);
                emp = new Emp(id, name, six, telephone, hireDate);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            InterEmpDao.close(resultSet, preparedStatement, connection);
        }
        return emp;//传出后记得修改自己需要的类型
    }

    /**
     * 模糊查询
     */
    @Override
    public List<Object> obscure(String EName) {//模糊查询
        try {
            //初始化
            connection = InterEmpDao.connection();
            objectList = new ArrayList<>();
            //执行
            preparedStatement = connection.prepareStatement("SELECT * FROM emp WHERE EName LIKE ? LIMIT 0,10");
            preparedStatement.setString(1, "%" + EName + "%");
            //影响
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String six = resultSet.getString(3);
                String telephone = resultSet.getString(4);
                Date hireDate = resultSet.getDate(5);
                objectList.add(new Emp(id, name, six, telephone, hireDate));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            InterEmpDao.close(resultSet, preparedStatement, connection);
        }
        return objectList;//传出后记得修改自己需要的类型
    }

    /**
     * 分页
     */
    @Override
    public List<Object> Limit(int startLimit, int endLimit) {
        try {
            //初始化
            objectList = new ArrayList<>();
            connection = InterEmpDao.connection();
            //执行
            preparedStatement = connection.prepareStatement("SELECT * FROM emp LIMIT ?,?");
            preparedStatement.setInt(1, (startLimit - 1) * endLimit);
            preparedStatement.setInt(2, endLimit);
            resultSet = preparedStatement.executeQuery();
            //结果
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String six = resultSet.getString(3);
                String telephone = resultSet.getString(4);
                Date hireDate = resultSet.getDate(5);
                objectList.add(new Emp(id, name, six, telephone, hireDate));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            InterEmpDao.close(resultSet, preparedStatement, connection);
        }
        return objectList;
    }

    /**
     * 批量删除
     */
    public boolean bulkDelete(String[] strings) {
        boolean isBulk = false;
        try {
            connection = InterEmpDao.connection();
            for (String str : strings) {
                if (str != null) {
                    statement = connection.createStatement();
                    System.out.print(str);
                    statement.addBatch("DELETE FROM emp WHERE EID = " + str);
                    statement.executeBatch();
                }
            }
            isBulk = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            InterEmpDao.close(null, statement, connection);
        }
        return isBulk;
    }

    /**
     * 最大页数
     */
    public static int maxLimit() {
        int count = 0;
        try {
            connection = InterEmpDao.connection();
            preparedStatement = connection.prepareStatement("SELECT COUNT(*) FROM emp");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                count = resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            InterEmpDao.close(resultSet, statement, connection);
        }
        return count;
    }
}
