package underclass.dao.realize;

import underclass.dao.BaseDao;
import underclass.dao.inter.ProductInterDao;
import underclass.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductRealizeDao implements ProductInterDao {
    static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;
    private int row = 0;

    @Override
    public int add(Product product) {
        row = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO product VALUES(NULL,?,?,?)");
            preparedStatement.setString(1, product.getPname());
            preparedStatement.setFloat(2, product.getPrice());
            preparedStatement.setString(3, product.getPdesc());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    @Override
    public List<Product> selectAll() {
        List<Product> productArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM product");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                productArrayList.add(new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getFloat(3), resultSet.getString(4)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return productArrayList;
    }

    @Override
    public int delete(int ID) {
        row = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("DELETE FROM product WHERE pid = ?");
            preparedStatement.setInt(1, ID);
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
}
