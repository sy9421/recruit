package cn.it.dao;

import cn.it.pojo.Recruittable;
import cn.it.pojo.RecruittableExample;
import cn.it.pojo.User;
import cn.it.vo.RecruitVo;
import cn.it.vo.RecruitVoPre;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecruittableMapper {
    int countByExample(RecruittableExample example);

    int deleteByExample(RecruittableExample example);

    int deleteByPrimaryKey(Integer recruitid);

    int insert(Recruittable record);

    int insertSelective(Recruittable record);

    List<Recruittable> selectByExample(RecruittableExample example);

    Recruittable selectByPrimaryKey(Integer recruitid);

    int updateByExampleSelective(@Param("record") Recruittable record, @Param("example") RecruittableExample example);

    int updateByExample(@Param("record") Recruittable record, @Param("example") RecruittableExample example);

    int updateByPrimaryKeySelective(Recruittable record);

    int updateByPrimaryKey(Recruittable record);

    RecruitVo selectRecruitAndRole(RecruitVoPre recruitVoPre);

    List<Recruittable> getRecruitIncludeStatus(User user);

    List<Recruittable> selectFive();
}