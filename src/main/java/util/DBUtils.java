package util;

import java.sql.*;

/**
 * @author 小叶同学
 * @version 1.1
 * @date 2022/12/11 20:01
 */
public class DBUtils {

    //static代表此属性/方法只与类有关，而与对象无关。用类直接调用
    static String driver="com.mysql.cj.jdbc.Driver";
    static String url="jdbc:mysql://localhost:3306/ycysoftware";
    static String userName="root";
    static String pass="123456";

    //得到连接
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Connection conn=null;
        //1.加载驱动
        Class.forName(driver);
        //2.得到连接
        conn= DriverManager.getConnection(url,userName,pass);
        return conn;
    }
    //释放资源
    public static void closeAll(Connection connection, Statement statement, ResultSet resultSet) throws SQLException {
        if(resultSet!=null){
            resultSet.close();
        }
        if(statement!=null){
            statement.close();
        }
        if(connection!=null){
            connection.close();
        }
    }

}
