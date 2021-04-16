package cn.it.service;

import cn.it.pojo.Message;

import java.util.List;

public interface MessageService {
    int insertMessage(Message message) throws Exception;
    List<Message> getAll() throws Exception;
    int updateMessage(Message message) throws Exception;
}
