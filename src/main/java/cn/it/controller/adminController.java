package cn.it.controller;

import cn.it.exceptionResolver.CustomException;
import cn.it.pojo.Admin;
import cn.it.service.AdminService;
import cn.it.service.MessageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class adminController {
    @Resource(name="adminService")
    private AdminService adminService;
    @RequestMapping("/toLogin")
    public String toLogin() throws Exception{
        return "admin/login";
    }
    @RequestMapping("/toBack")
    public String toBack(Admin admin, HttpServletRequest request) throws Exception{
        Admin admin1 = adminService.selectOne(admin.getAdminname());
        if(admin1 == null)
            throw new CustomException("用户名错误");
        if (!admin1.getAdminpwd().equals(admin.getAdminpwd()))
            throw new CustomException("密码错误");
        HttpSession session = request.getSession();
        session.setAttribute("admin",admin.getAdminname());
        return "admin/back";
    }
}
