package cn.it.controller;

import cn.it.pojo.*;
import cn.it.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class IndexController {
    @Resource(name = "newsService")
    private NewsService newsService;
    @Resource(name = "jobFairService")
    private JobFairService jobFairService;
    @Resource(name = "recruitTableService")
    private RecruitTableService recruitTableService;
    @Resource(name="messageService")
    private MessageService messageService;
    @Resource(name="documentService")
    private DocumentService documentService;
    @Resource(name="userService")
    private UserService userService;
    @RequestMapping("/index")
    public String showIndex(HttpServletRequest request) throws Exception{
        List<News> newsList = newsService.getAll();
        List<Jobfair> jobFairList = jobFairService.getAll();
        List<Recruittable> recruitList = recruitTableService.getAll("");
        List<Message> messageList = messageService.getAll();
        List<Document> documentList = documentService.getAll();
        HttpSession session = request.getSession();
        session.setAttribute("newsList",newsList);
        session.setAttribute("jobFairList",jobFairList);
        session.setAttribute("recruitList",recruitList);
        session.setAttribute("messageList",messageList);
        session.setAttribute("documentList",documentList);

        List<News> newsList1 = newsService.selectFive();
        List<Jobfair> jobFairList1 = jobFairService.selectFive();
        List<Recruittable> recruitList1 = recruitTableService.selectFive();
        session.setAttribute("newsList1",newsList1);
        session.setAttribute("jobFairList1",jobFairList1);
        session.setAttribute("recruitList1",recruitList1);

        List<User> userList = userService.getAll();
        session.setAttribute("userList",userList);
        return "index";
    }
}
