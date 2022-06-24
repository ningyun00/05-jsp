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

    /**
     * 热门
     */
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

    /**
     * 即使特卖
     */
    public List<EabyProduct> selectSell() {
        List<EabyProduct> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product WHERE categoryLevel3Id = 0 ORDER BY `fileName` DESC");
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

    /**
     * 进口生鲜
     */
    public List<EabyProduct> selectLevel1Id() {
        List<EabyProduct> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product WHERE categoryLevel1Id = 660");
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

    /**
     * 食品饮料
     */
    public List<EabyProduct> selectLevel2Id() {
        List<EabyProduct> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product WHERE categoryLevel2Id =661 ");
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

    /**
     * 化妆品
     */
    public List<EabyProduct> Level1Id3F() {
        List<EabyProduct> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product WHERE categoryLevel1Id = 548");
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

    /**
     * 母婴玩具
     */
    public List<EabyProduct> Level2Id4F() {
        List<EabyProduct> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product WHERE categoryLevel2Id =661");
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

    /**
     * 家居生活
     */
    public List<EabyProduct> Level1Id5F() {
        List<EabyProduct> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product WHERE categoryLevel1Id =628");
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

    /**
     * 数码家电
     */
    public List<EabyProduct> Level1Id6F() {
        List<EabyProduct> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product WHERE categoryLevel1Id =670");
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

    /**
     * 猜你喜欢
     */
    public List<EabyProduct> Level3Id() {
        List<EabyProduct> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product WHERE categoryLevel3Id =0");
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
