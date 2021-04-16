package cn.it.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        StringBuffer url = httpServletRequest.getRequestURL();
        if(url.indexOf("recruit")>0||url.indexOf("index")>0||url.indexOf("resume")>0
                ||url.indexOf("news")>0||url.indexOf("login")>0||url.indexOf("logon")>0
                ||url.indexOf("toRegister")>0||url.indexOf("register")>0||url.indexOf("jobFair")>0
                ||url.indexOf("download")>0||url.indexOf("toLogin")>0||url.indexOf("toBack")>0||url.indexOf("statics")>0){
            return true;
        }
        HttpSession session = httpServletRequest.getSession();
        String username = (String) session.getAttribute("admin");
        if(url.indexOf("toBack")>0 && "admin".equals(username)){
            return true;
        }
        /*判断session中是否有登录信息，如果没有则跳转到登录界面，如果有则放行*/
        if(httpServletRequest.getSession().getAttribute("username")!=null||httpServletRequest.getSession().getAttribute("admin")!=null){
            return true;
        }
        httpServletRequest.getRequestDispatcher("/WEB-INF/jsp/user/login.jsp").forward(httpServletRequest,httpServletResponse);

        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
