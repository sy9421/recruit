package cn.it.service;

import cn.it.pojo.Status;
import cn.it.pojo.StatusKey;

public interface StatusService {
    int insertStatus(Status status) throws Exception;
    Status selectByIdAndUsername(StatusKey statusKey) throws Exception;
    int updateStatus(Status status) throws Exception;
}
