package cn.it.service;

import cn.it.dao.UserMapper;
import cn.it.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService{
    @Resource(name="userMapper")
    private UserMapper userMapper;

    @Override
    public User findUserByName(String username) throws Exception {
        User user = userMapper.selectByPrimaryKey(username);
        return user;
    }

    @Override
    public int insertUser(User user) throws Exception {
        int rs = userMapper.insert(user);
        return rs;
    }
    public int updateUser(User user) throws Exception{
        int rs = userMapper.updateByPrimaryKeySelective(user);
        return rs;
    }
}
