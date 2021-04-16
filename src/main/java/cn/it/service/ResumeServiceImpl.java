package cn.it.service;

import cn.it.dao.ResumeMapper;
import cn.it.pojo.Resume;
import cn.it.pojo.ResumeExample;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("resumeService")
public class ResumeServiceImpl implements ResumeService{
    @Resource(name="resumeMapper")
    private ResumeMapper resumeMapper;

    @Override
    public Resume selectResume(String username) throws Exception {
        Resume resume = resumeMapper.selectByPrimaryKey(username);
        return resume;
    }

    @Override
    public int insertResume(Resume resume) throws Exception {
        int rs = resumeMapper.insertSelective(resume);
        return rs;
    }

    @Override
    public int updateResume(Resume resume) throws Exception {
        int rs = resumeMapper.updateByPrimaryKeySelective(resume);
        return rs;
    }

    @Override
    public Resume selectResumeAndUser(String username) throws Exception {
        Resume resume = resumeMapper.selectResumeAndUser(username);
        return resume;
    }
}
