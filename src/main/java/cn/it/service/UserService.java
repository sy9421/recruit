package cn.it.service;

import cn.it.pojo.User;

import java.util.List;

public interface UserService {
    User findUserByName(String username) throws Exception;
    int insertUser(User user) throws Exception;
    int updateUser(User user) throws Exception;
    List<User> getAll() throws Exception;
    int deleteUser(String userName) throws Exception;
}
