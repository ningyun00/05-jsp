package com.ning.ying.dao;

import com.ning.ying.entity.EabyProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    public List<EabyProduct> selectHot() {
        List<EabyProduct> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                EabyProduct product = new EabyProduct();
                product.setId(resultSet.getInt("id"));
                product.setName(resultSet.getString("name"));
                product.setDescription(resultSet.getString("description"));
                product.setPrice(resultSet.getDouble("price"));
                product.setStock(resultSet.getInt("stock"));
                product.setCategoryLevel1Id(resultSet.getInt("categoryLevel1Id"));
                product.setCategoryLevel2Id(resultSet.getInt("categoryLevel2Id"));
                product.setCategoryLevel3Id(resultSet.getInt("categoryLevel3Id"));
                product.setFileName(resultSet.getString("fileName"));
                product.setIsDelete(resultSet.getInt("isDelete"));
                product.setIsHot(resultSet.getInt("isHot"));
                product.setIsSale(resultSet.getInt("isSale"));
                eabyProductArrayList.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyProductArrayList;
    }
}
