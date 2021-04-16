package cn.it.service;

import cn.it.pojo.User;

public interface UserService {
    User findUserByName(String username) throws Exception;
    int insertUser(User user) throws Exception;
    int updateUser(User user) throws Exception;
}
