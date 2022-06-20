package ning.ying.dao;

import ning.ying.entity.City;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CityDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    public static List<City> CityBYID(int PID) {
        List<City> cityArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM city WHERE pid = ?");
            preparedStatement.setInt(1, PID);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int CID = resultSet.getInt(1);
                String CName = resultSet.getString(2);
                int Pid = resultSet.getInt(3);
                cityArrayList.add(new City(CID, CName, Pid));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return cityArrayList;
    }
}
