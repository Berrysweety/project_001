package dao;

import pojo.Tusers;

/**
 * @author 小叶同学
 * @version 1.1
 * @date 2022/12/11 20:05
 */
public interface TusersDao {
    Tusers login(String username, String password);
    int register(String username,String password,String isPassword);
}
