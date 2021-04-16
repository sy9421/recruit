package cn.it.service;

import cn.it.dao.JobfairMapper;
import cn.it.pojo.Jobfair;
import cn.it.pojo.JobfairExample;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("jobFairService")
public class JobFairServiceImpl implements JobFairService{
    @Resource(name = "jobfairMapper")
    private JobfairMapper jobfairMapper;
    @Override
    public List<Jobfair> getAll() throws Exception {
        JobfairExample example = new JobfairExample();
        List<Jobfair> jobFairs = jobfairMapper.selectByExample(example);
        return jobFairs;
    }

    @Override
    public int delete(Integer id) throws Exception {
        int sc = jobfairMapper.deleteByPrimaryKey(id);
        return sc;
    }

    @Override
    public int update(Jobfair jobfair) throws Exception {
        int sc = jobfairMapper.updateByPrimaryKeySelective(jobfair);
        return sc;
    }

    @Override
    public int insert(Jobfair jobfair) throws Exception {
        int sc = jobfairMapper.insert(jobfair);
        return sc;
    }

    @Override
    public Jobfair getOne(Integer id) throws Exception {
        Jobfair jobfair = jobfairMapper.selectByPrimaryKey(id);
        return jobfair;
    }

    @Override
    public List<Jobfair> selectFive() throws Exception {
        List<Jobfair> list = jobfairMapper.selectFive();
        return list;
    }
}
