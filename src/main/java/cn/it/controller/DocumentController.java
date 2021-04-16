package cn.it.controller;

import cn.it.pojo.Document;
import cn.it.service.DocumentService;
import cn.it.service.JobFairService;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/document")
public class DocumentController {
    @Resource(name="documentService")
    private DocumentService documentService;

    @Resource(name = "jobFairService")
    private JobFairService jobFairService;

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable Integer id) throws Exception{
        documentService.delete(id);
        return "redirect:/jobFair/toJobFair";
    }

    @RequestMapping("/uploadFile")
    public String uploadFile(MultipartFile uploadFile, Integer jobfairid, Document document) throws Exception {
        System.out.println(uploadFile.getName());//获取上传文件的表单名称
        System.out.println(uploadFile.getContentType());//MIME类型
        System.out.println(uploadFile.getSize());//文件大小
        System.out.println(uploadFile.getOriginalFilename());//获取上传文件的完整名称
        //获取上传文件对应的输入流
        //InputStream in = headImg.getInputStream();

        //创建一个磁盘目录用于保存文件
        File destFile= new File("E:\\IDEAWorkSpace\\Recruit\\uploadFile");
        if(!destFile.exists()) {
            destFile.mkdir();
        }
        //使用uuid作为文件随机名称
        String fileName = UUID.randomUUID().toString().replaceAll("-", "");
        //使用FileNameUtils获取上传文件名的后缀
        String extension = FilenameUtils.getExtension(uploadFile.getOriginalFilename());// jpg , png 等等
        //创建新的文件名称
        String newFileName = fileName + "."+extension;


        //创建要保存文件的File对象
        File file = new File(destFile, newFileName);
        //保存文件到本地磁盘
        uploadFile.transferTo(file);

        document.setDocumentname(newFileName);

        List<Document> document2 = documentService.getOneByJobFairId(jobfairid);
        if(document2.size() == 0){
            document.setJobfairid(jobfairid);
            documentService.insert(document);
        }else{
            documentService.update(document);
        }

        return "redirect:/jobFair/toJobFair";
    }

    @RequestMapping("/download/{id}")
    public void upload(@PathVariable Integer id , HttpServletResponse response) throws Exception {
        List<Document> document = documentService.getOneByJobFairId(id);

        String fileName = document.get(0).getDocumentname();
        //1. 接受文件名，读取磁盘对应的文件，创建输入流对象

        FileInputStream inputStream = new FileInputStream("E:\\IDEAWorkSpace\\Recruit\\uploadFile\\"+fileName);

        //2.获取响应对象的输出流
        ServletOutputStream outputStream = response.getOutputStream();


        //3.文件下载文件名的编码使用ISO-08859-1编码
        //我们需要将我们UTF-8的 filename转换ISO-8859-1编码
        //3.1先将字符串以UTF-8转换成字节数组
        byte[] bytes = fileName.getBytes("UTF-8");
        //3.2再将字节数组以 ISO-8859-1转换字符串
        fileName = new String(bytes, "ISO-8859-1");


        //4.响应的内容应该是以附件的形式响应给浏览器(设置响应头)
        response.setHeader("Content-Disposition", "attachment;filename="+fileName);

        //5.响应文件给浏览器
        IOUtils.copy(inputStream, outputStream);

    }


}
