package cn.it.dao;

import cn.it.pojo.Jobfair;
import cn.it.pojo.JobfairExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface JobfairMapper {
    int countByExample(JobfairExample example);

    int deleteByExample(JobfairExample example);

    int deleteByPrimaryKey(Integer jobfairid);

    int insert(Jobfair record);

    int insertSelective(Jobfair record);

    List<Jobfair> selectByExample(JobfairExample example);

    Jobfair selectByPrimaryKey(Integer jobfairid);

    int updateByExampleSelective(@Param("record") Jobfair record, @Param("example") JobfairExample example);

    int updateByExample(@Param("record") Jobfair record, @Param("example") JobfairExample example);

    int updateByPrimaryKeySelective(Jobfair record);

    int updateByPrimaryKey(Jobfair record);

    List<Jobfair> selectJobFairAndDocument();
    List<Jobfair> selectFive();
}