package cn.it.service;

import cn.it.dao.AdminMapper;
import cn.it.pojo.Admin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("adminService")
public class AdminServiceImpl implements AdminService{

    @Resource(name="adminMapper")
    private AdminMapper adminMapper;
    @Override
    public Admin selectOne(String username) throws Exception {
        Admin admin = adminMapper.selectByPrimaryKey(username);
        return admin;
    }
}
