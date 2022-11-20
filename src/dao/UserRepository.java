package dao;

import dto.User;
import util.DatabaseUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

public class UserRepository {
    Connection connection = DatabaseUtil.getConnection();
    private ArrayList<User> listofUser = new ArrayList<User>();

    private static UserRepository instance = new UserRepository();

    public static UserRepository getInstance(){
        return instance;
    }
    public UserRepository(){

    }
    public User getUserById(String id){
        User userById = null;
        for(int i = 0; i<listofUser.size();i++){
            User user = listofUser.get(i);
            if(user != null && user.getId() != null && user.getId().equals(id)){
                userById = user;
                break;
            }
        }
        return userById;
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

    public ArrayList<User> getAllUsers() {
        return listofUser;
    }

    public void addUser(User user) {
        listofUser.add(user);
    }

}
