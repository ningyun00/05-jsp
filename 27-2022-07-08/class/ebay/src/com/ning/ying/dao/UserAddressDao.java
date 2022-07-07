package com.ning.ying.dao;

import com.ning.ying.entity.EabyUserAddress;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserAddressDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet  = null;
    /** 根据用户id查询地址 */
    public List<EabyUserAddress> queryByUserId(int uid){
        List<EabyUserAddress> list = new ArrayList<EabyUserAddress>();
        try {
            connection = BaseDao.getConnection();
            String sql  = "select * from eaby_user_address where userid = ? order by isDefault desc" ;
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, uid);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                EabyUserAddress address = new EabyUserAddress();
                address.setAddress(resultSet.getString("address"));
                address.setCreateTime(resultSet.getDate("createTime"));
                address.setId(resultSet.getInt("id"));
                address.setIsDefault(resultSet.getInt("isDefault"));
                address.setRemark(resultSet.getString("remark"));
                address.setUserId(resultSet.getInt("userId"));
                list.add(address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            BaseDao.close(resultSet, preparedStatement,connection);
        }
        return list;
    }

    /** 添加新的地址 */
    public int queryByUserId(EabyUserAddress ua){
        int row=0;
        try {
            connection = BaseDao.getConnection();
            String sql  = "insert into Eaby_User_Address values(null,?,?,?,0,?)" ;
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, ua.getUserId());
            preparedStatement.setString(2, ua.getAddress());
            preparedStatement.setTimestamp(3, new Timestamp(ua.getCreateTime().getTime()));
            preparedStatement.setString(4, ua.getRemark());
            row = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    /** 修改地址 */
    public int updataUserAddress(EabyUserAddress ua){
        int row=0;
        try {
            connection = BaseDao.getConnection();
            String sql  = "UPDATE `eaby_user_address` SET address = ? , remark = ? WHERE id = ?" ;
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, ua.getAddress());
            preparedStatement.setString(2, ua.getRemark());
            preparedStatement.setInt(3, ua.getId());
            row = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
    /** 修改默认地址 */
    public int updataDefaultAddress(EabyUserAddress ua){
        int row=0;
        try {
            connection = BaseDao.getConnection();
            String sql  = "UPDATE `eaby_user_address` SET `isDefault` = 1 WHERE `id` = ?" ;
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, ua.getId());
            row = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
    /** 默认地址 改普通地址  查询id */
    public int ordinaryAddress(){
        int id = 0;
        try {
            connection = BaseDao.getConnection();
            String sql  = "SELECT id FROM `eaby_user_address` WHERE isDefault=1" ;
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                id = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return id;
    }
    /** 默认地址 改普通地址  改变默认地址 */
    public int ordinaryAddress(int id){
        int row = 0;
        try {
            connection = BaseDao.getConnection();
            String sql  = "UPDATE `eaby_user_address` SET isDefault = '0' WHERE id = ?" ;
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            row = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
    /** 默认地址 改普通地址  改变默认地址 */
    public int deleteAddress(int id){
        int row = 0;
        try {
            connection = BaseDao.getConnection();
            String sql  = "DELETE FROM `eaby_user_address`  WHERE id = ?" ;
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            row = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }
}
