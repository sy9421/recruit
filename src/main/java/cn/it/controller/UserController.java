package cn.it.controller;

import cn.it.exceptionResolver.CustomException;
import cn.it.pojo.Recruittable;
import cn.it.pojo.Resume;
import cn.it.pojo.User;
import cn.it.service.RecruitTableService;
import cn.it.service.ResumeService;
import cn.it.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource(name="userService")
    private UserService userService;

    @Resource(name = "resumeService")
    private ResumeService resumeService;

    @Resource(name="recruitTableService")
    private RecruitTableService recruitService;
    @RequestMapping("/toLogin")
    public String toLogin() throws Exception{
        return "user/login";
    }
    @RequestMapping("/toRegister")
    public String toLogon() throws Exception{
        return "user/register";
    }

    @RequestMapping("/login")
    public String login(String username, String userpwd, HttpServletRequest request) throws Exception{
        if("".equals(username)){
            throw new CustomException("请输入用户名");
        }
        if(username.length()>16||userpwd.length()>16){
            throw new CustomException("用户名和密码长度需要小于等于16位");
        }
        User user = userService.findUserByName(username);
        HttpSession session = request.getSession();
        if(user == null){
            throw new CustomException("用户名错误,请核对后重新登录");
        }else if(user.getUserpwd().equals(userpwd)){
            session.setAttribute("username",user.getUsername());
        }else{
            throw new CustomException("密码错误,请重新输入");
        }
        return "index";
    }
    @RequestMapping("logon")
    public String logon(User user,HttpServletRequest request) throws Exception{
        user.setCreatedate(new Date());
        User user1 = userService.findUserByName(user.getUsername());
        if(user.getUsername().length()>16||user.getUserpwd().length()>16){
            throw new CustomException("用户名和密码长度需要小于等于16位");
        }
        if (user.getTel().length() != 11){
            throw new CustomException("手机号需要为11位");
        }
        if(user1 != null || "admin".equals(user.getUsername())){
            throw new CustomException("用户名已存在,请换一个");
        }
        int rs = userService.insertUser(user);
        if(rs == 0){
            throw new CustomException("注册失败,请检查网络后重试");
        }
        HttpSession session = request.getSession();
        session.setAttribute("username",user.getUsername());
        return "index";
    }
    @RequestMapping("logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("username");
        return "index";
    }
    /*跳转到profile界面*/
    @RequestMapping("/toProfile")
    public String toProfile(HttpServletRequest request,Model model) throws Exception{
        User user = findUserByUsername(request);
        model.addAttribute("user",user);

        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");

        if(user.getRole() == 1){
            Resume resume = resumeService.selectResume(username);
            model.addAttribute("resume",resume);
            return "user/profile";
        }else{
            List<Recruittable> recruitList = recruitService.getAll(username);
            model.addAttribute("recruitList",recruitList);
            return "user/profile_employer";
        }
    }
    @RequestMapping("/toUpdate")
    public String toUpdate(HttpServletRequest request,Model model) throws Exception{
        User user = findUserByUsername(request);
        model.addAttribute("user",user);
        return "user/update";
    }
    @RequestMapping("update")
    public String update(User user,HttpServletRequest request) throws Exception{
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        user.setUsername(username);
        int rs = userService.updateUser(user);
        if(rs == 0){
            throw new CustomException("保存失败，请稍后重试");
        }
        return "redirect:/user/toProfile";
    }

//    封装 查询登录的用户
    private User findUserByUsername(HttpServletRequest request) throws Exception{
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        User user = userService.findUserByName(username);
        return user;
    }
}
