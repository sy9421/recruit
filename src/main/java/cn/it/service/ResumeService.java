package cn.it.service;


import cn.it.pojo.Resume;

public interface ResumeService {
    Resume selectResume(String username) throws Exception;
    int insertResume(Resume resume) throws Exception;
    int updateResume(Resume resume) throws Exception;
    Resume selectResumeAndUser(String username) throws Exception;
}
