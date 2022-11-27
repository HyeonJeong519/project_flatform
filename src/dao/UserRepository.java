package dao;

import dto.User;
import util.DatabaseUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository {

    public static int USER_EXISTENT = 1;
    public static int USER_NONEXISTENT = 2;
    public static int USER_JOIN_SUCCESS = 3;
    public static int USER_LOGIN_SUCCESS = 4;
    public static int USER_LOGIN_FAIL = 5;
    Connection connection = DatabaseUtil.getConnection();
    private ArrayList<User> listofUser = new ArrayList<User>();

    private static UserRepository instance = new UserRepository();

    public static UserRepository getInstance(){
        return instance;
    }
    public UserRepository(){

    }
    public User getUserById(String id){
        int rt = 0;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        User user = null;

        String query = "SELECT * FROM USER WHERE ID = ?";

        try {
            conn = DatabaseUtil.getConnection();

            if (conn == null)
                return user;
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                user = new User(rs.getString("id"),
                        rs.getString("password"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("phonenumber"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return user;
    }

    public int join(String id, String password, String name, String email, String phoneNumber){
        String SQL = "INSERT INTO USER VALUES (?,?,?,?,?)";
        try {
            // 각각의 데이터를 실제로 넣어준다.
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            // 쿼리문의 ?안에 각각의 데이터를 넣어준다.
            preparedStatement.setString(1, id);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, name);
            preparedStatement.setString(4, email);
            preparedStatement.setString(5, phoneNumber);

            // 명령어를 수행한 결과 반환, 반환값: insert가 된 데이터의 개수
            return preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int confirmLogin(String userId, String password) {
        int rt = 0;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String query = "SELECT PASSWORD FROM USER WHERE USERID = ?";

        try {
            connection = DatabaseUtil.getConnection();

            if (connection == null) return rt;
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1, userId);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                if (password.equals(rs.getString("password")))
                    rt = USER_LOGIN_SUCCESS;
                else
                    rt = USER_LOGIN_FAIL;
            } else
                rt = USER_NONEXISTENT;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (connection != null) connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return rt;
    }

    public void addUser(User user) {
        listofUser.add(user);
    }

}
