package com.ning.dao;

import com.ning.Tool.Tool;
import com.ning.entity.Book;
import com.ning.entity.BookInter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * 图书表操作
 */
public class BookDao implements BookInter {
    private static BaseDao baseDao = new BaseDao();
    private static Connection connection = null;
    private static Statement statement = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    /**
     * 查询所有图书
     */
    @Override
    public List<Book> selectBook() {
        List<Book> bookArrayList = new ArrayList<>();
        try {
            connection = baseDao.getConnection();
            String sql = "SELECT * FROM book WHERE `DELETE` = 0";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Book book = new Book();
                book.setId(resultSet.getInt("id"));
                book.setBookName(resultSet.getString("bookName"));
                book.setAuthorName(resultSet.getString("authorName"));
                book.setPrice(resultSet.getDouble("price"));
                book.setBookType(resultSet.getInt("bookType"));
                book.setIntroduce(resultSet.getString("introduce"));
                book.setImageName(resultSet.getString("imageName"));
                book.setDelete(resultSet.getInt("delete"));
                bookArrayList.add(book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(resultSet, preparedStatement, connection);
        }
        return bookArrayList;
    }
    /**
     * 查询所有图书分页
     */
    @Override
    public List<Book> selectBook(int limitStart) {
        List<Book> bookArrayList = new ArrayList<>();
        try {
            connection = baseDao.getConnection();
            String sql = "SELECT * FROM book WHERE `DELETE` = 0  LIMIT ?,?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,(limitStart-1)*Tool.limit);
            preparedStatement.setInt(2, Tool.limit);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Book book = new Book();
                book.setId(resultSet.getInt("id"));
                book.setBookName(resultSet.getString("bookName"));
                book.setAuthorName(resultSet.getString("authorName"));
                book.setPrice(resultSet.getDouble("price"));
                book.setBookType(resultSet.getInt("bookType"));
                book.setIntroduce(resultSet.getString("introduce"));
                book.setImageName(resultSet.getString("imageName"));
                book.setDelete(resultSet.getInt("delete"));
                bookArrayList.add(book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(resultSet, preparedStatement, connection);
        }
        return bookArrayList;
    }

    @Override
    public Integer selectRow() {
        int row = 0;
        try {
            connection = baseDao.getConnection();
            String sql = "SELECT COUNT(*) AS COUNT FROM book";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                row = resultSet.getInt("count");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(resultSet,preparedStatement,connection);
        }
        return row;
    }
}
