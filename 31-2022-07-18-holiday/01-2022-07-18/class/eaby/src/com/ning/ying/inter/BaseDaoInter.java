package com.ning.ying.inter;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public interface BaseDaoInter {
    ComboPooledDataSource dataSource = new ComboPooledDataSource();

    Connection getConnect();

    void close(ResultSet resultSet, Statement statement, Connection connection);
}
