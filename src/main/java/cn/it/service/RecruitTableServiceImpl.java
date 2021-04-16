package cn.it.service;

import cn.it.dao.RecruittableMapper;
import cn.it.pojo.Recruittable;
import cn.it.pojo.RecruittableExample;
import cn.it.pojo.User;
import cn.it.vo.RecruitVo;
import cn.it.vo.RecruitVoPre;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("recruitTableService")
public class RecruitTableServiceImpl implements RecruitTableService{
    @Resource(name = "recruittableMapper")
    private RecruittableMapper recruitTableMapper;
    @Override
    public List<Recruittable> getAll(String username) throws Exception {
        RecruittableExample example = new RecruittableExample();
        RecruittableExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<Recruittable> recruitTableList = recruitTableMapper.selectByExample(example);
        return recruitTableList;
    }

    @Override
    public int insertRecruit(Recruittable recruit) throws Exception {
        int sc = recruitTableMapper.insertSelective(recruit);
        return sc;
    }

    @Override
    public Recruittable getOne(Integer id) throws Exception {
        Recruittable recruit = recruitTableMapper.selectByPrimaryKey(id);
        return recruit;
    }

    @Override
    public int updateRecruit(Recruittable recruit) throws Exception {
        int rs = recruitTableMapper.updateByPrimaryKeySelective(recruit);
        return rs;
    }
    @Override
    public int deleteRecruit(Integer id) throws Exception{
        int rs = recruitTableMapper.deleteByPrimaryKey(id);
        return rs;
    }

    @Override
    public RecruitVo selectRecruitAndRole(RecruitVoPre recruitVoPre) throws Exception{
        RecruitVo recruitVo = recruitTableMapper.selectRecruitAndRole(recruitVoPre);
        return recruitVo;
    }

    @Override
    public List<Recruittable> getRecruitAndStatus(User user) throws Exception {
        List<Recruittable> allList = recruitTableMapper.getRecruitIncludeStatus(user);
        return allList;
    }

    @Override
    public List<Recruittable> selectAll() throws Exception {
        RecruittableExample example = new RecruittableExample();
        List<Recruittable> recruitList = recruitTableMapper.selectByExample(example);
        return recruitList;
    }

    @Override
    public List<Recruittable> selectLikePosition(String position) throws Exception {
        RecruittableExample example = new RecruittableExample();
        RecruittableExample.Criteria criteria = example.createCriteria();
        criteria.andPositionLike("%"+position+"%");
        List<Recruittable> recruitList = recruitTableMapper.selectByExample(example);
        return recruitList;
    }

    @Override
    public List<Recruittable> selectFive() throws Exception {
        List<Recruittable> list = recruitTableMapper.selectFive();
        return list;
    }
}
