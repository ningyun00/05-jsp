package com.ning.ying.dao;

import com.ning.ying.entity.EabyProduct;
import com.ning.ying.entity.EabyProductCategory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 数据访问层--- 商品分类
 */
public class CategoryDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    /**
     * 根据商品级别，查询对应的商品分类
     */
    public List<EabyProductCategory> queryLevelList(int type) {
        List<EabyProductCategory> list = new ArrayList<EabyProductCategory>();
        try {
            connection = BaseDao.getConnection();
            String sql = "select * from eaby_product_category where type = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, type);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                EabyProductCategory ct = new EabyProductCategory();
                ct.setId(resultSet.getInt("id"));
                ct.setName(resultSet.getString("name"));
                ct.setParentId(resultSet.getInt("parentId"));
                ct.setType(resultSet.getInt("type"));
                list.add(ct);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return list;
    }


    /**
     * 根据商品分类级别，查询对应商品分类
     */
    public List<EabyProductCategory> queryLevelList(int type, int parentId) {
        List<EabyProductCategory> list = new ArrayList<EabyProductCategory>();
        try {
            connection = BaseDao.getConnection();
            String sql = " select * from eaby_product_category where type = ? and parentId=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, type);
            preparedStatement.setInt(2, parentId);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                EabyProductCategory ct = new EabyProductCategory();
                ct.setId(resultSet.getInt("id"));
                ct.setName(resultSet.getString("name"));
                ct.setParentId(resultSet.getInt("parentId"));
                ct.setType(resultSet.getInt("type"));
                list.add(ct);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return list;
    }
    /**
     * 热门
     */
    public List<EabyProduct> queryByHot() {
        List<EabyProduct> list = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            String sql = "SELECT * FROM eaby_product WHERE ishot = 1 ORDER BY id DESC";
            preparedStatement = connection.prepareStatement(sql);
            //执行
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                EabyProduct ep = new EabyProduct();
                ep.setId(resultSet.getInt("id"));
                ep.setName(resultSet.getString("name"));
                ep.setDescription(resultSet.getString("description"));
                ep.setPrice(resultSet.getDouble("price"));
                ep.setStock(resultSet.getInt("stock"));
                ep.setCategoryLevel1Id(resultSet.getInt("categoryLevel1Id"));
                ep.setCategoryLevel2Id(resultSet.getInt("categoryLevel2Id"));
                ep.setCategoryLevel3Id(resultSet.getInt("categoryLevel3Id"));
                ep.setFileName(resultSet.getString("fileName"));
                ep.setIsDelete(resultSet.getInt("isDelete"));
                ep.setIsHot(resultSet.getInt("isHot"));
                ep.setIsSale(resultSet.getInt("isSale"));
                list.add(ep);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return list;
    }

    /**
     * 特价
     */
    public List<EabyProduct> queryBySale() {
        List<EabyProduct> list = new ArrayList<>();
        Connection conn = BaseDao.getConnection();
        String sql = "SELECT * FROM eaby_product WHERE isSale = 1 ORDER BY id DESC";

        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            //执行
            rs = pstmt.executeQuery();
            while (rs.next()) {
                EabyProduct ep = new EabyProduct();
                ep.setId(rs.getInt("id"));
                ep.setName(rs.getString("name"));
                ep.setDescription(rs.getString("description"));
                ep.setPrice(rs.getDouble("price"));
                ep.setStock(rs.getInt("stock"));
                ep.setCategoryLevel1Id(rs.getInt("categoryLevel1Id"));
                ep.setCategoryLevel2Id(rs.getInt("categoryLevel2Id"));
                ep.setCategoryLevel3Id(rs.getInt("categoryLevel3Id"));
                ep.setFileName(rs.getString("fileName"));
                ep.setIsDelete(rs.getInt("isDelete"));
                ep.setIsHot(rs.getInt("isHot"));
                ep.setIsSale(rs.getInt("isSale"));

                list.add(ep);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(rs, pstmt, conn);
        }
        return list;
    }

    /**
     * 一级分类商品
     */
    public List<EabyProduct> queryByCategoryLevel1Id(int clId) {
        List<EabyProduct> list = new ArrayList<>();
        Connection conn = BaseDao.getConnection();
        String sql = "SELECT * FROM eaby_product WHERE categoryLevel1Id =?";

        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, clId);
            //执行
            rs = pstmt.executeQuery();
            while (rs.next()) {
                EabyProduct ep = new EabyProduct();
                ep.setId(rs.getInt("id"));
                ep.setName(rs.getString("name"));
                ep.setDescription(rs.getString("description"));
                ep.setPrice(rs.getDouble("price"));
                ep.setStock(rs.getInt("stock"));
                ep.setCategoryLevel1Id(rs.getInt("categoryLevel1Id"));
                ep.setCategoryLevel2Id(rs.getInt("categoryLevel2Id"));
                ep.setCategoryLevel3Id(rs.getInt("categoryLevel3Id"));
                ep.setFileName(rs.getString("fileName"));
                ep.setIsDelete(rs.getInt("isDelete"));
                ep.setIsHot(rs.getInt("isHot"));
                ep.setIsSale(rs.getInt("isSale"));

                list.add(ep);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(rs, pstmt, conn);
        }
        return list;
    }

    /**
     * 菜单分类  Id 分类编号， parentId 父级目录id
     */
    public List<EabyProductCategory> queryCategoryLevelList(int Id) {
        List<EabyProductCategory> list = new ArrayList<>();
        Connection conn = BaseDao.getConnection();
        String sql = "SELECT * FROM eaby_product_category WHERE `type`=?";

        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, Id);
            //执行
            rs = pstmt.executeQuery();
            while (rs.next()) {
                EabyProductCategory epc = new EabyProductCategory();
                epc.setId(rs.getInt("id"));
                epc.setName(rs.getString("name"));
                epc.setParentId(rs.getInt("parentId"));
                epc.setType(rs.getInt("type"));

                list.add(epc);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(rs, pstmt, conn);
        }
        return list;
    }


}
