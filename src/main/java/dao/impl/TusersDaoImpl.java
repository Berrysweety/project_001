package dao.impl;

import dao.TusersDao;
import pojo.Tusers;
import util.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 小叶同学
 * @version 1.1
 * @date 2022/12/11 20:05
 */
public class TusersDaoImpl implements TusersDao {

    @Override
    public Tusers login(String username, String password) {
        Tusers tusers = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from t_users where username=?and password=?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                tusers = new Tusers();
                tusers.setUsername(rs.getString("username"));
                tusers.setPassword(rs.getString("password"));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DBUtils.closeAll(conn, ps, null);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return tusers;
    }

    @Override
    public int register(String username,String password,String isPassword) {
            Connection connection = null;
            PreparedStatement preparedStatement=null;
            ResultSet resultSet=null;
            String sql=null;
            int n=-1;
            try {
                sql="select * from t_users where username=?";
                connection=DBUtils.getConnection();
                preparedStatement=connection.prepareStatement(sql);
                preparedStatement.setString(1,username);
                resultSet=preparedStatement.executeQuery();
                if (resultSet.next()){
                    n=0;
                }
                else {
                    if(password.equals(isPassword)) {
                        sql = "insert into t_users(username,password) values(?,?)";
                        connection = DBUtils.getConnection();
                        preparedStatement = connection.prepareStatement(sql);
                        preparedStatement.setString(1, username);
                        preparedStatement.setString(2, password);
                        n = preparedStatement.executeUpdate();
                    }
                    else{
                        n=2;
                    }
                }
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }finally {
                try {
                    DBUtils.closeAll(connection,preparedStatement,resultSet);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            }
            return n;
        }

    }

//    @Override
//    public int register(Tusers tusers) {
//        int num = 0;
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//
//        // String sql = "insert into t_news(newsId,title,context) values(?,?,?)";
//        String sql = "insert into t_users(username,password) values(?,?)";
//        //JDBC
//        try {
//            conn = DBUtils.getConnection();
//            ps = conn.prepareStatement(sql);
//            //ps.setInt(1,tNews.getNewsId());
//            ps.setString(1,tusers.getUsername());
//            ps.setString(2, tusers.getPassword());
//            num = ps.executeUpdate();
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        } finally {
//            //释放资源
//            try {
//                DBUtils.closeAll(conn, ps, null);
//            } catch (SQLException throwables) {
//                throwables.printStackTrace();
//            }
//        }
//        return num;
//    }
//}
