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
}
