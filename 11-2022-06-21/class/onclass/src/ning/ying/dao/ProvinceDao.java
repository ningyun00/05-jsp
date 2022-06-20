package ning.ying.dao;

import ning.ying.entity.City;
import ning.ying.entity.Province;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProvinceDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    public static List<Province> ProvinceList() {
        List<Province> provinceArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM province");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int CID = resultSet.getInt(1);
                String CName = resultSet.getString(2);
                provinceArrayList.add(new Province(CID, CName));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return provinceArrayList;
    }
}
