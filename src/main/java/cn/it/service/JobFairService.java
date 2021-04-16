package cn.it.service;

import cn.it.pojo.Jobfair;

import java.util.List;

public interface JobFairService {
    List<Jobfair> getAll() throws Exception;
    int delete(Integer id) throws Exception;
    int update(Jobfair jobfair) throws Exception;
    int insert(Jobfair jobfair) throws Exception;
    Jobfair getOne(Integer id) throws Exception;
    List<Jobfair> selectFive() throws Exception;
}
