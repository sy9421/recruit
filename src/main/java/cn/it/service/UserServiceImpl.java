package cn.it.service;

import cn.it.dao.UserMapper;
import cn.it.pojo.User;
import cn.it.pojo.UserExample;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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
    public List<User> getAll() throws Exception{
        UserExample example = new UserExample();
        List<User> userList = userMapper.selectByExample(example);
        return userList;
    }

    @Override
    public int deleteUser(String userName) throws Exception {
        int rs = userMapper.deleteByPrimaryKey(userName);
        return rs;
    }
}