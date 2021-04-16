package cn.it.controller;

import cn.it.exceptionResolver.CustomException;
import cn.it.pojo.News;
import cn.it.service.MessageService;
import cn.it.service.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/news")
public class NewsController {

    @Resource(name="newsService")
    private NewsService newsService;
    @Resource(name="messageService")
    private MessageService messageService;
    @RequestMapping("/showNews")
    public String showNews(HttpServletRequest request) throws Exception{
        HttpSession session = request.getSession();
        List<News> newsList = newsService.getAll();
        session.setAttribute("newsList",newsList);
        return "redirect:/statics/dist/admin/news.jsp";
    }
    @RequestMapping("/toUpdate/{id}")
    public String toUpdate(@PathVariable("id") Integer id, Model model) throws Exception{
        News news = newsService.getOne(id);
        model.addAttribute("news",news);
        return "admin/news/update";
    }
    @RequestMapping("/updateNews")
    public String updateNews(News news) throws Exception{
        int sc = newsService.updateNews(news);
        if(sc == 0)
            throw new CustomException("更新失败,请稍后重试");
        return "redirect:/news/showNews";
    }
    @RequestMapping("/toAdd")
    public String toAdd(){
        return "admin/news/add";
    }
    @RequestMapping("/addNews")
    public String addNews(News news) throws Exception{
        news.setTime(new Date());
        int sc = newsService.insertNews(news);
        if(sc == 0)
            throw new CustomException("添加失败,请稍后重试");
        return "redirect:/news/showNews";
    }
    @RequestMapping("/deleteNews/{id}")
    public String deleteNews(@PathVariable("id") Integer id) throws Exception{
        int sc = newsService.deleteNews(id);
        if(sc == 0)
            throw new CustomException("删除失败,请稍后重试");
        return "redirect:/news/showNews";
    }
    @RequestMapping("/allNews")
    public String allNews() throws Exception{
        return "admin/news/all";
    }
    @RequestMapping("/toDetail/{id}")
    public String toDetail(@PathVariable("id") Integer id,Model model) throws Exception{
        News news = newsService.getOne(id);
        model.addAttribute("news",news);
        return "admin/news/detail";
    }

}
