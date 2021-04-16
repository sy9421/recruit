package cn.it.service;

import cn.it.dao.StatusMapper;
import cn.it.pojo.Status;
import cn.it.pojo.StatusExample;
import cn.it.pojo.StatusKey;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("statusService")
public class StatusServiceImpl implements StatusService{
    @Resource(name="statusMapper")
    private StatusMapper statusMapper;

    @Override
    public int insertStatus(Status status) throws Exception {
        int rs = statusMapper.insertSelective(status);
        return rs;
    }


    @Override
    public Status selectByIdAndUsername(StatusKey statusKey) throws Exception {
        Status status = statusMapper.selectByPrimaryKey(statusKey);
        return status;
    }

    @Override
    public int updateStatus(Status status) throws Exception {
        StatusExample example = new StatusExample();
        StatusExample.Criteria criteria = example.createCriteria();
        criteria.andRecruitidEqualTo(status.getRecruitid());
        criteria.andUsernameEqualTo(status.getUsername());
        int rs = statusMapper.updateByExampleSelective(status, example);
        return rs;
    }
}
