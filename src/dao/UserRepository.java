package dao;

import dto.User;

import java.util.ArrayList;

public class UserRepository {
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
    public ArrayList<User> getAllUsers() {
        return listofUser;
    }

    public void addUser(User user) {
        listofUser.add(user);
    }

}
