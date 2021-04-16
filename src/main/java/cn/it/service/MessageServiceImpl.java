package cn.it.service;

import cn.it.dao.MessageMapper;
import cn.it.pojo.Message;
import cn.it.pojo.MessageExample;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("messageService")
public class MessageServiceImpl implements MessageService{

    @Resource(name="messageMapper")
    private MessageMapper messageMapper;
    @Override
    public int insertMessage(Message message) throws Exception {
        message.setResult(0);
        messageMapper.insert(message);
        return 0;
    }

    @Override
    public List<Message> getAll() throws Exception {
        MessageExample example = new MessageExample();
        List<Message> messageList = messageMapper.selectByExample(example);
        return messageList;
    }

    @Override
    public int updateMessage(Message message) throws Exception {
        int rs = messageMapper.updateByPrimaryKeySelective(message);
        return rs;
    }
}
