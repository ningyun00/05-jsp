package ning.ying.dao;

import ning.ying.entity.FurloughApply;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 请假对象操作层
 */
public class FurloughApplyRealizeDao implements FurloughApplyInter {
    private Connection connection = null;
    private Statement statement = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;
    private FurloughApply furloughApply = null;
    private List<FurloughApply> furloughApplyArrayList = new ArrayList<FurloughApply>();
    private int row = 0;

    /**
     * 添加请假申请
     */
    @Override
    public int addFurloughApply(FurloughApply furloughApply) {
        try {
            //初始化
            row = 0;
            connection = BaseDao.getConnection();
            //执行对象
            preparedStatement = connection.prepareStatement("INSERT INTO furloughapply VALUE(NULL,?,?,?,?,?,?)");
            preparedStatement.setString(1, furloughApply.getProposer());
            preparedStatement.setString(2, furloughApply.getDept());
            preparedStatement.setDate(3, new Date(furloughApply.getApplyDate().getTime()));
            preparedStatement.setTimestamp(4, new Timestamp(furloughApply.getStartTime().getTime()));
            preparedStatement.setTimestamp(5, new Timestamp(furloughApply.getLasTime().getTime()));
            preparedStatement.setString(6, furloughApply.getType());
            //结果
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    /**
     * 查询请假申请表
     */
    @Override
    public List<FurloughApply> selectFurloughApply() {
        try {
            //初始化
            connection = BaseDao.getConnection();
            furloughApplyArrayList = new ArrayList<FurloughApply>();
            //执行
            preparedStatement = connection.prepareStatement("SELECT * FROM FURLOUGHAPPLY  ORDER BY applyDate DESC  LIMIT 0,10");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int ID = resultSet.getInt(1);
                String proposer = resultSet.getString(2);
                String dept = resultSet.getString(3);
                Date applyDate = resultSet.getDate(4);
                Date startTime = resultSet.getDate(5);
                Date lasTime = resultSet.getDate(6);
                String type = resultSet.getString(7);
                furloughApplyArrayList.add(new FurloughApply(ID, proposer, dept, applyDate, startTime, lasTime, type));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return furloughApplyArrayList;
    }
}
