package cn.it.controller;

import cn.it.exceptionResolver.CustomException;
import cn.it.pojo.Status;
import cn.it.pojo.StatusKey;
import cn.it.service.StatusService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
@RequestMapping("/status")
public class StatusController {
    @Resource(name="statusService")
    private StatusService statusService;

    @RequestMapping("/insertStatus/{id}")
    public String insertStatus(@PathVariable("id") Integer id, Status status, HttpServletRequest request, StatusKey statusKey) throws Exception{
        String username = (String)request.getSession().getAttribute("username");
        if(username == null || "".equals(username)){
            return "user/login";
        }
        statusKey.setRecruitid(id);
        statusKey.setUsername(username);
        Status flag = statusService.selectByIdAndUsername(statusKey);
        if (flag != null){
            throw new CustomException("请勿重复投递简历，投递的简历可以在投递箱内查看结果，请耐心等待");
        }
        status.setRecruitid(id);
        status.setStart(new Date());
        status.setStatus("waiting");
        status.setUsername(username);
        int rs = statusService.insertStatus(status);
        if(rs == 0)
            throw new CustomException("简历投递失败,请稍后重试");
        return "redirect:/recruit/toMyOrders";
    }

    @RequestMapping("/aspect/{id}/{username}")
    public String aspect(@PathVariable("id") Integer id,Status status,@PathVariable String username) throws Exception{
        status.setUsername(username);
        aspectAndReject(id,status,"aspect");
        return "redirect:/recruit/toMyOrders";
    }
    @RequestMapping("/reject/{id}/{username}")
    public String reject(@PathVariable("id") Integer id,Status status,@PathVariable String username) throws Exception{
        status.setUsername(username);
        aspectAndReject(id,status,"reject");
        return "redirect:/recruit/toMyOrders";
    }
    public void aspectAndReject(Integer id,Status status,String str) throws Exception{
        status.setRecruitid(id);
        status.setEnd(new Date());
        status.setStatus(str);
        int rs = statusService.updateStatus(status);
        if(rs == 0)
            throw new CustomException("操作失败,请稍后重试");
    }
}
