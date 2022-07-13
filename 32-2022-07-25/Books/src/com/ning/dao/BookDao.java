package com.ning.dao;

import com.ning.Tool.Tool;
import com.ning.entity.Book;
import com.ning.entity.BookInter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
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
            while (resultSet.next()) {
                Book book = new Book();
                book.setId(resultSet.getInt("id"));
                book.setBookName(resultSet.getString("bookName"));
                book.setAuthorName(resultSet.getString("authorName"));
                book.setPrice(resultSet.getDouble("price"));
                book.setBookType(resultSet.getInt("bookType"));
                book.setIntroduce(resultSet.getString("introduce"));
                book.setImageName(resultSet.getString("imageName"));
                book.setDelete(resultSet.getInt("delete"));
                book.setImageContent(resultSet.getString("imageContent"));
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
            preparedStatement.setInt(1, (limitStart - 1) * Tool.limit);
            preparedStatement.setInt(2, Tool.limit);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
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
            String sql = "SELECT COUNT(*) AS COUNT FROM book WHERE `delete` = 0";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                row = resultSet.getInt("count");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(resultSet, preparedStatement, connection);
        }
        return row;
    }

    @Override
    public Integer deleteBook(String[] str) {
        int row = 0;
        try {
            connection = baseDao.getConnection();
            StringBuilder id = new StringBuilder("");
            for (String s : str) {
                id.append(s).append(",");
            }
            id.append(" ");
            id = id.delete(id.indexOf(", "), id.length());
            String sql = "UPDATE `book` SET `delete` =  1 WHERE id IN (" + id + ")";
            preparedStatement = connection.prepareStatement(sql);
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    @Override
    public Integer updateBook(Book book) {
        int row = 0;
        try {
            connection = baseDao.getConnection();
            String sql = "UPDATE `book` SET bookName = ?,authorName = ?,price = ?,bookType = ?,introduce = ?,imageName = ?,imageContent = ? WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, book.getBookName());
            preparedStatement.setString(2, book.getAuthorName());
            preparedStatement.setDouble(3, book.getPrice());
            preparedStatement.setInt(4, book.getBookType());
            preparedStatement.setString(5, book.getIntroduce());
            preparedStatement.setString(6, book.getImageName());
            preparedStatement.setString(7, book.getImageContent());
            preparedStatement.setInt(8, book.getId());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(null, preparedStatement, connection);
        }
        return row;
    }

    @Override
    public Book selectBook(Integer id) {
        Book book = new Book();
        try {
            connection = baseDao.getConnection();
            String sql = "SELECT * FROM book WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                book.setId(resultSet.getInt("id"));
                book.setBookName(resultSet.getString("bookName"));
                book.setAuthorName(resultSet.getString("authorName"));
                book.setPrice(resultSet.getDouble("price"));
                book.setBookType(resultSet.getInt("bookType"));
                book.setIntroduce(resultSet.getString("introduce"));
                book.setImageName(resultSet.getString("imageName"));
                book.setDelete(resultSet.getInt("delete"));
                book.setImageContent(resultSet.getString("imageContent"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            baseDao.close(resultSet, preparedStatement, connection);
        }
        return book;
    }

    @Override
    public List<Book> selectBook(Book book1) {
        List<Book> bookArrayList = new ArrayList<>();
        try {
            connection = baseDao.getConnection();
            String sql = "SELECT * FROM book WHERE bookName LIKE ? OR authorName LIKE ? AND `DELETE` = 0 LIMIT 0,?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "%" + book1.getBookName() + "%");
            preparedStatement.setString(2, "%" + book1.getAuthorName() + "%");
            preparedStatement.setInt(3, Tool.limit);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Book book = new Book();
                book.setId(resultSet.getInt("id"));
                book.setBookName(resultSet.getString("bookName"));
                book.setAuthorName(resultSet.getString("authorName"));
                book.setPrice(resultSet.getDouble("price"));
                book.setBookType(resultSet.getInt("bookType"));
                book.setIntroduce(resultSet.getString("introduce"));
                book.setImageName(resultSet.getString("imageName"));
                book.setDelete(resultSet.getInt("delete"));
                book.setImageContent(resultSet.getString("imageContent"));
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
    public Integer addBook(Book book) {
        int row = 0;
        try {
            connection = baseDao.getConnection();
            String sql = "INSERT INTO book VALUES (NULL,?,?,?,?,?,NULL,0,?);";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,book.getBookName());
            preparedStatement.setString(2, book.getAuthorName());
            preparedStatement.setDouble(3,book.getPrice());
            preparedStatement.setInt(4,book.getBookType());
            preparedStatement.setString(5, book.getIntroduce());
            preparedStatement.setString(6,book.getImageContent());
            row = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
         baseDao.close(null,preparedStatement,connection);
        }
        return row;
    }
}
