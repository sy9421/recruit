package cn.it.service;

import cn.it.pojo.Admin;

public interface AdminService {
    Admin selectOne(String username) throws Exception;
}
