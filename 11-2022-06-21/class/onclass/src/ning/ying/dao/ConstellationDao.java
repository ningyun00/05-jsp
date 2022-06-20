package ning.ying.dao;

import ning.ying.entity.Constellation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ConstellationDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    public static Constellation getContent(int CID) {
        Constellation constellation = null;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM constellation WHERE CID = ?");
            preparedStatement.setInt(1,CID);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int Cid = resultSet.getInt(1);
                String CName = resultSet.getString(2);
                String CContent = resultSet.getString(3);
                constellation = new Constellation(Cid, CName, CContent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return constellation;
    }

    public static List<Constellation> getContent() {
        List<Constellation> constellationArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM constellation ");
            resultSet = preparedStatement.executeQuery();
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int Cid = resultSet.getInt(1);
                String CName = resultSet.getString(2);
                String CContent = resultSet.getString(3);
                constellationArrayList.add(new Constellation(Cid, CName, CContent));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return constellationArrayList;
    }
}
