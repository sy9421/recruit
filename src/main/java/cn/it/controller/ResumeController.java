package cn.it.controller;

import cn.it.exceptionResolver.CustomException;
import cn.it.pojo.Resume;
import cn.it.service.ResumeService;
import cn.it.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/resume")
public class ResumeController {
    @Resource(name = "resumeService")
    private ResumeService resumeService;
    @RequestMapping("/toUpdate")
    public String toUpdate(HttpServletRequest request, Model model) throws Exception{
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        Resume resume = resumeService.selectResume(username);
        model.addAttribute("resume",resume);
        return "resume/update";
    }
    @RequestMapping("/update")
    public String updateResume(Resume resume) throws Exception{
        Resume resume1 = resumeService.selectResume(resume.getUsername());
        int rs = 0;
        if(resume1 == null){
            rs = resumeService.insertResume(resume);
        }else{
            rs = resumeService.updateResume(resume);
        }

        if (rs == 0){
            throw new CustomException("操作失败,请稍后重试");
        }
        return "redirect:/user/toProfile";
    }
    @RequestMapping("/toPreview")
    public String toPreview(HttpServletRequest request,Model model) throws Exception{
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        Resume resume = resumeService.selectResumeAndUser(username);
        model.addAttribute("resume",resume);
        return "resume/preview";
    }

    @RequestMapping("/seePreview/{username}")
    public String seePreview(@PathVariable("username") String username,Model model) throws Exception{
        Resume resume = resumeService.selectResumeAndUser(username);
        model.addAttribute("resume",resume);
        return "resume/preview";
    }

}
