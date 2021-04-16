package cn.it.service;

import cn.it.pojo.Recruittable;
import cn.it.pojo.User;
import cn.it.vo.RecruitVo;
import cn.it.vo.RecruitVoPre;

import java.util.List;

public interface RecruitTableService {
    List<Recruittable> getAll(String username) throws Exception;
    int insertRecruit(Recruittable recruit) throws Exception;
    Recruittable getOne(Integer id) throws Exception;
    int updateRecruit(Recruittable recruit) throws Exception;
    int deleteRecruit(Integer id) throws Exception;
    RecruitVo selectRecruitAndRole(RecruitVoPre recruitVoPre) throws Exception;
    List<Recruittable> getRecruitAndStatus(User user) throws Exception;
    List<Recruittable> selectAll() throws Exception;
    List<Recruittable> selectLikePosition(String position) throws Exception;
    List<Recruittable> selectFive() throws Exception;
}
