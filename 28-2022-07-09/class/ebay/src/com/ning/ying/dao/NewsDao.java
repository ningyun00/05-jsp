package com.ning.ying.dao;

import com.ning.ying.entity.EabyNews;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * 新闻操作表
 */
public class NewsDao {
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    /**
     * 查询部分新闻(分页) startLimit(开始页数) endLimit(结束页数)
     */
    public List<EabyNews> getNewsAll(int startLimit, int endLimit) {
        List<EabyNews> newsArrayList = new ArrayList<>();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM `eaby_news` ORDER BY createTime DESC LIMIT ?,?");
            preparedStatement.setInt(1, (startLimit - 1) * endLimit);
            preparedStatement.setInt(2, endLimit);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                EabyNews eabyNews = new EabyNews();
                eabyNews.setId(resultSet.getInt("id"));
                eabyNews.setTitle(resultSet.getString("title"));
                eabyNews.setContent(resultSet.getString("content"));
                eabyNews.setCreateTime(resultSet.getDate("createTime"));
                newsArrayList.add(eabyNews);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return newsArrayList;
    }

    /**
     * 查询指定新闻
     */
    public EabyNews selectNew(int newId) {
        EabyNews eabyNews = new EabyNews();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM `eaby_news` WHERE id = ?");
            preparedStatement.setInt(1, newId);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                eabyNews.setId(resultSet.getInt("id"));
                eabyNews.setTitle(resultSet.getString("title"));
                eabyNews.setContent(resultSet.getString("content"));
                eabyNews.setCreateTime(resultSet.getDate("createTime"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyNews;
    }

    /**
     * 删除单个新闻
     */
    public int deleteNew(int newId) {
        int row = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("DELETE FROM `eaby`.`eaby_news` WHERE `id` = ?");
            preparedStatement.setInt(1, newId);
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return row;
    }

    /**
     * 修改新闻
     */
    public int updateNew(EabyNews eabyNews) {
        int row = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("UPDATE eaby_news SET content=?,createTime=CURRENT_DATE WHERE id = ?");
            preparedStatement.setString(1, eabyNews.getContent());
            preparedStatement.setInt(2, eabyNews.getId());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return row;
    }

    /**
     * 添加新闻
     */
    public int addNews(EabyNews eabyNews) {
        int row = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO `eaby_news` VALUES(NULL,?,?,CURRENT_DATE)");
            preparedStatement.setString(1, eabyNews.getTitle());
            preparedStatement.setString(2, eabyNews.getContent());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return row;
    }

    /**
     * 查询重复新闻标题
     */
    public EabyNews TitleNews(String name) {
        EabyNews eabyNews1 = new EabyNews();
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM eaby_news WHERE title = ?");
            preparedStatement.setString(1, name);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                eabyNews1.setId(resultSet.getInt(1));
                eabyNews1.setTitle(resultSet.getString(2));
                eabyNews1.setContent(resultSet.getString(3));
                eabyNews1.setCreateTime(resultSet.getTimestamp(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return eabyNews1;
    }

    /**
     * 最大行数
     */
    public int maxRow() {
        int count = 0;
        try {
            connection = BaseDao.getConnection();
            preparedStatement = connection.prepareStatement("SELECT COUNT(*) FROM eaby_news");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                count = resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.close(resultSet, preparedStatement, connection);
        }
        return count;
    }
}
