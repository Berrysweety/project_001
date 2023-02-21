package pojo;

/**
 * @author 小叶同学
 * @version 1.1
 * @date 2022/12/11 20:04
 */
public class Tusers {

    private String username;
    private String password;

    public Tusers() {}


    public Tusers(String username, String password) {
       this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }



}
