package ning.ying.dao;

import javax.sql.DataSource;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class StudentDataSource implements DataSource {
    private static List<Connection> connectionArrayList = new ArrayList<>();

    static {
        for (int i = 0; i < 3; i++) {
            connectionArrayList.add(BaseDao.getConnection());
        }
    }

    public void giveBack(Connection connection) {
        connectionArrayList.add(connection);
    }

    @Override
    public Connection getConnection() throws SQLException {
        if (connectionArrayList.size() == 0) {
            for (int i = 0; i < 3; i++) {
                connectionArrayList.add(BaseDao.getConnection());
            }
        }
        System.out.println(connectionArrayList.size());
        return new StudentConnectionWrap(connectionArrayList.remove(0),connectionArrayList);
    }

    @Override
    public Connection getConnection(String username, String password) throws SQLException {
        return null;
    }

    @Override
    public <T> T unwrap(Class<T> iface) throws SQLException {
        return null;
    }

    @Override
    public boolean isWrapperFor(Class<?> iface) throws SQLException {
        return false;
    }

    @Override
    public PrintWriter getLogWriter() throws SQLException {
        return null;
    }

    @Override
    public void setLogWriter(PrintWriter out) throws SQLException {

    }

    @Override
    public void setLoginTimeout(int seconds) throws SQLException {

    }

    @Override
    public int getLoginTimeout() throws SQLException {
        return 0;
    }

    @Override
    public Logger getParentLogger() throws SQLFeatureNotSupportedException {
        return null;
    }
}
