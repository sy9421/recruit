package cn.it.controller;

import cn.it.exceptionResolver.CustomException;
import cn.it.pojo.Recruittable;
import cn.it.pojo.User;
import cn.it.service.RecruitTableService;
import cn.it.service.UserService;
import cn.it.vo.RecruitVo;
import cn.it.vo.RecruitVoPre;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@RequestMapping("/recruit")
@Controller
public class RecruitController {

    @Resource(name="recruitTableService")
    private RecruitTableService recruitService;

    @Resource(name="userService")
    private UserService userService;

    @RequestMapping("/toAddRecruit")
    public String toAddRecruit() throws Exception{
        return "job/add_job";
    }

    @RequestMapping("/addRecruit")
    public String addRecruit(Recruittable recruit) throws Exception{
        recruit.setTime(new Date());
        int sc = recruitService.insertRecruit(recruit);
        if(sc == 0)
            throw new CustomException("添加失败,请稍后重试");
        return "redirect:/user/toProfile";
    }

    @RequestMapping("/toUpdateRecruit/{id}")
    public String toUpdateRecruit(@PathVariable("id") Integer id,Model model,HttpServletRequest request) throws Exception{
        String username = (String)request.getSession().getAttribute("username");
        if(username == null || "".equals(username)){
            return "user/login";
        }
        Recruittable recruit = recruitService.getOne(id);
        model.addAttribute("recruit",recruit);
        return "job/update";
    }

    @RequestMapping("/updateRecruit")
    public String updateRecruit(Recruittable recruit) throws Exception{
        int rs = recruitService.updateRecruit(recruit);
        if(rs == 0)
            throw new CustomException("更新失败,请稍后重试");
        return "redirect:/user/toProfile";
    }

    @RequestMapping("/deleteRecruit/{id}")
    public String deleteRecruit(@PathVariable("id") Integer id) throws Exception{
        int rs = recruitService.deleteRecruit(id);
        if(rs == 0)
            throw new CustomException("删除失败,请稍后重试");
        return "redirect:/user/toProfile";
    }

    @RequestMapping("/searchResult")
    public String searchResult(String position,Model model) throws Exception{
        if("sy942167933".equals(position)){
            return "redirect:/admin/toLogin";
        }
        if (position == null)
            position = "";
        List<Recruittable> recruitList = recruitService.selectLikePosition(position);
        model.addAttribute("recruitList",recruitList);
        return "job/search_result";
    }
    @RequestMapping("/toMyOrders")
    public String toMyOrders(Model model,HttpServletRequest request) throws Exception{
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        User loginUser = userService.findUserByName(username);
        model.addAttribute("user",loginUser);
        List<Recruittable> recruitList = recruitService.getRecruitAndStatus(loginUser);
        model.addAttribute("recruitList",recruitList);
        System.out.println(recruitList);
        return "order/my_orders";
    }

    @RequestMapping("/toGetRecruit/{id}")
    public String toGetRecruit(@PathVariable("id") Integer id, HttpServletRequest request,Model model, RecruitVoPre recruitVoPre) throws Exception{
        recruitVoPre.setRecruitid(id);
        recruitVoPre.setUsername((String) request.getSession().getAttribute("username"));
        RecruitVo recruitVo = recruitService.selectRecruitAndRole(recruitVoPre);
        model.addAttribute("recruitVo",recruitVo);
        return "job/get_job";
    }
}
