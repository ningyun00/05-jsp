package com.ning.ying.dao;

import com.ning.ying.entity.EabyNews;
import com.ning.ying.entity.EabyProduct;
import com.ning.ying.entity.EabyProductCategory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product WHERE isSale = 1 ORDER BY id DESC");
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

    /** 一级分类商品 */
    public List<EabyProduct> queryByCategoryLevel1Id(int clId){
        List<EabyProduct> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product WHERE categoryLevel1Id =?");
            preparedStatement.setInt(1,clId);
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
    /**
     * 一级菜单
     */
    public List<EabyProductCategory> productType(int Id) {
        List<EabyProductCategory> eabyProductArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_product_category WHERE TYPE  = ?");
            preparedStatement.setInt(1,Id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                EabyProductCategory eabyProductCategory = new EabyProductCategory();
                eabyProductCategory.setId(resultSet.getInt("id"));
                eabyProductCategory.setName(resultSet.getString("name"));
                eabyProductCategory.setParentId(resultSet.getInt("parentId"));
                eabyProductCategory.setType(resultSet.getInt("type"));
                eabyProductArrayList.add(eabyProductCategory);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyProductArrayList;
    }
    /**
     * 新闻
     */
    public List<EabyNews> news() {
        List<EabyNews> eabyNewsArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            for (int i = 1; i <= 4; i++) {
                preparedStatement = connection.prepareStatement("SELECT * FROM eaby_news");
                resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    EabyNews eabyNews = new EabyNews();
                    eabyNews.setId(resultSet.getInt("id"));
                    eabyNews.setTitle(resultSet.getString("title"));
                    eabyNews.setContent(resultSet.getString("content"));
                    eabyNewsArrayList.add(eabyNews);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyNewsArrayList;
    }

    /**
     * 根据商品分类,查询商品信息
     * @param level:分类级别  id:分类id size:查询行数
     * @return
     */
    public List<EabyProduct> queryByCategory1Id(int level, int id, int page, int size){
        List<EabyProduct> list = new ArrayList<EabyProduct>();
        connection= BaseDao.getConnection();
        StringBuffer sql = new StringBuffer(" select * from eaby_product where ");
        if(level==1){
            sql.append(" categoryLevel1Id");
        }else if(level==2){
            sql.append(" categoryLevel2Id");
        }else if(level==3){
            sql.append(" categoryLevel3Id");
        }
        //0,20    20,20   40,20  60,20
        sql.append("=? limit ?,?");
        try {
            preparedStatement = connection.prepareStatement(sql.toString());
            preparedStatement.setInt(1, id);
            // ((当前页-1)*size)
            preparedStatement.setInt(2, ((page-1)*size));
            preparedStatement.setInt(3, size);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                EabyProduct pt = new EabyProduct();
                pt.setId(resultSet.getInt("id"));
                pt.setName(resultSet.getString("name"));
                pt.setDescription(resultSet.getString("description"));
                pt.setCategoryLevel1Id(resultSet.getInt("categoryLevel1Id"));
                pt.setCategoryLevel2Id(resultSet.getInt("categoryLevel2Id"));
                pt.setCategoryLevel3Id(resultSet.getInt("categoryLevel3Id"));
                pt.setPrice(resultSet.getDouble("price"));
                pt.setStock(resultSet.getInt("stock"));
                pt.setFileName(resultSet.getString("fileName"));
                pt.setIsDelete(resultSet.getInt("isDelete"));
                pt.setIsHot(resultSet.getInt("isHot"));
                pt.setIsSale(resultSet.getInt("isSale"));
                list.add(pt);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return list;
    }

    /** 查询单个商品 */
    public EabyProduct queryById(int id){
        EabyProduct pt = new EabyProduct();
        connection = BaseDao.getConnection();
        StringBuffer sql = new StringBuffer(" select * from eaby_product where id=?");
        try {
            preparedStatement = connection.prepareStatement(sql.toString());
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                pt.setId(resultSet.getInt("id"));
                pt.setName(resultSet.getString("name"));
                pt.setDescription(resultSet.getString("description"));
                pt.setCategoryLevel1Id(resultSet.getInt("categoryLevel1Id"));
                pt.setCategoryLevel2Id(resultSet.getInt("categoryLevel2Id"));
                pt.setCategoryLevel3Id(resultSet.getInt("categoryLevel3Id"));
                pt.setPrice(resultSet.getDouble("price"));
                pt.setStock(resultSet.getInt("stock"));
                pt.setFileName(resultSet.getString("fileName"));
                pt.setIsDelete(resultSet.getInt("isDelete"));
                pt.setIsHot(resultSet.getInt("isHot"));
                pt.setIsSale(resultSet.getInt("isSale"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return pt;
    }

    /** 根据编号查询浏览记录 */
    public List<EabyProduct> queryHistory(String pid){
        List<EabyProduct> list = new ArrayList<EabyProduct>();
       connection = BaseDao.getConnection();
        String sql =" select * from eaby_product where id in("+pid+")";
        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                EabyProduct pt = new EabyProduct();
                pt.setId(resultSet.getInt("id"));
                pt.setName(resultSet.getString("name"));
                pt.setDescription(resultSet.getString("description"));
                pt.setCategoryLevel1Id(resultSet.getInt("categoryLevel1Id"));
                pt.setCategoryLevel2Id(resultSet.getInt("categoryLevel2Id"));
                pt.setCategoryLevel3Id(resultSet.getInt("categoryLevel3Id"));
                pt.setPrice(resultSet.getDouble("price"));
                pt.setStock(resultSet.getInt("stock"));
                pt.setFileName(resultSet.getString("fileName"));
                pt.setIsDelete(resultSet.getInt("isDelete"));
                list.add(pt);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return list;
    }
}
