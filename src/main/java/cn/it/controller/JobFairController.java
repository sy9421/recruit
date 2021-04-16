package cn.it.controller;

import cn.it.exceptionResolver.CustomException;
import cn.it.pojo.Document;
import cn.it.pojo.Jobfair;
import cn.it.service.DocumentService;
import cn.it.service.JobFairService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/jobFair")
public class JobFairController {

    @Resource(name="jobFairService")
    private JobFairService jobFairService;

    @Resource(name = "documentService")
    private DocumentService documentService;

    @RequestMapping("/toAdd")
    public String toAdd() throws Exception{

        return "admin/jobFair/add";
    }
    @RequestMapping("/add")
    public String add(Jobfair jobfair,HttpServletRequest request,String date) throws Exception{
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date1 = sdf.parse(date);
        jobfair.setDate(date1);
        jobFairService.insert(jobfair);
        return "redirect:/jobFair/toJobFair";
    }

    @RequestMapping("/toUpdate/{id}")
    public String toUpdate(@PathVariable("id") Integer id, Model model) throws Exception{
        Jobfair jobFair = jobFairService.getOne(id);
        model.addAttribute("jobFair",jobFair);
        return "admin/jobFair/update";
    }
    @RequestMapping("/update")
    public String update(Jobfair jobfair) throws Exception{
        jobFairService.update(jobfair);
        return "redirect:/jobFair/toJobFair";
    }
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer id) throws Exception{
        jobFairService.delete(id);
        return "redirect:/jobFair/toJobFair";
    }

    @RequestMapping("/toJobFair")
    public String toJobFair(HttpServletRequest request) throws Exception{
        List<Jobfair> jobFairList = jobFairService.getAll();
        List<Document> documentList = documentService.getAll();
        HttpSession session = request.getSession();
        session.removeAttribute("jobFairList");
        session.setAttribute("jobFairList",jobFairList);
        session.removeAttribute("documentList");
        session.setAttribute("documentList",documentList);
        return "redirect:/statics/dist/admin/jobFair.jsp";
    }

    @RequestMapping("/allJobFair")
    public String allDocument(){
        return "admin/jobFair/all";
    }
}
