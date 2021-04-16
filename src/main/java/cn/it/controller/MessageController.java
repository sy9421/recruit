package cn.it.controller;

import cn.it.pojo.Message;
import cn.it.service.MessageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/message")
public class MessageController {

    @Resource(name="messageService")
    private MessageService messageService;

    @RequestMapping("/insertMessage/{id}")
    public String insertMessage(@PathVariable("id") Integer id, Message message, HttpServletRequest request) throws Exception{
        message.setUsername((String) request.getSession().getAttribute("username"));
        message.setNewsid(id);
        int sc = messageService.insertMessage(message);
        HttpSession session = request.getSession();
        session.removeAttribute("messageList");
        List<Message> messageList = messageService.getAll();
        session.setAttribute("messageList",messageList);
        return "redirect:/news/toDetail/"+id;
    }
    @RequestMapping("/updateMessage/{id}/{status}")
    public String updateMessage(@PathVariable("id") Integer id,@PathVariable("status") String status,Message message) throws Exception{
        message.setMessageid(id);
        if("pass".equals(status)){
            message.setResult(1);
        }else if("no".equals(status)){
            message.setResult(-1);
        }
        messageService.updateMessage(message);
        return "redirect:/message/showMessage";
    }
    @RequestMapping("/showMessage")
    public String showMessage(HttpServletRequest request) throws Exception{
        HttpSession session = request.getSession();
        List<Message> messageList = messageService.getAll();
        session.removeAttribute("messageList");
        session.setAttribute("messageList",messageList);
        return "redirect:/statics/dist/admin/message.jsp";
    }
}
