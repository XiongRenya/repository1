package com.oc.Controller;

import com.oc.Domain.User;
import com.oc.Service.ServiceImp.UserServiceImp;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContext;

import javax.annotation.Resource;
import javax.servlet.Filter;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource(name="userServiceImp")
    UserServiceImp usi;
//登录方法
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String findUser(User user,HttpSession session,HttpServletRequest request){
       User user1=usi.findUser(user);
       System.out.println(user1);
         if(user1!=null){
             session.setAttribute("user1",user1);
             String photoImg="http://localhost:8080/upload/"+user1.getPhotoImg();
             session.setAttribute("photoImg",photoImg);
              return  "index";
             }
        else{
             String erro="用户不存在，请重新登录！";
             request.setAttribute("erro",erro);
             return "login";
        }
 }

 //注册方法
    @RequestMapping(value = "/register",method =RequestMethod.POST)
    public String addUser(User user1, HttpSession session){
        usi.addUser(user1);
        session.setAttribute("user1",user1);
        //存往session域中,判断是否有头像存在域中
        if(session.getAttribute("photoImg")!=null){
            session.removeAttribute("photoImg");
        }
        return "index";
    }
 //退出方法
    @RequestMapping("/exit")
    public String exit(HttpSession session){
        session.removeAttribute("user1");
  return "index";
  }
  //更改信息方法
   @RequestMapping("/updateUser")
    public  String updateUser(HttpSession session,User user){
            usi.updateUser(user);
            if(session.getAttribute("user1")!=null){
                session.removeAttribute("user1");
            }
            session.setAttribute("user1",user);
            return  "user";
        }
//更改头像方法
    @RequestMapping(value = "/updatePhoto")
    public  String updatePhoto(HttpServletRequest request, @RequestParam(name="img",required =false)CommonsMultipartFile file){

       //获取全局文本对象
        ServletContext context=request.getServletContext();
       //获取上传目的地文件夹的真实路径
        String path= context.getRealPath("/upload");
          //获取文件对象
        File file1=new File(path);
        //判断是否存在文件，没有创建一个空白文件
        if(!file1.exists()){
            file1.mkdir();
        }
        //获取文件名字，随机前缀和上传文件时的名字
    String prefix= UUID.randomUUID().toString().replace("-","");
        String suffx=file.getOriginalFilename();
        String fileName=prefix+suffx;
        String photoImg="http://localhost:8080/upload/"+fileName;
        System.out.println("文件名称"+fileName);
        //存往session域中,判断是否有头像存在域中
        if(request.getSession().getAttribute("photoImg")!=null){
            request.getSession().removeAttribute("photoImg");
        }
        request.getSession().setAttribute("photoImg",photoImg);
        try{
        //创建文件输入输出流
        OutputStream os=new FileOutputStream(new File(path+"\\"+fileName));
        InputStream is=file.getInputStream();
         //借用工具开始上传
        IOUtils.copy(is,os);
       //更新到数据库
        User user=(User)request.getSession().getAttribute("user1");
       usi.updatePhoto(fileName,user.getUsername());
           os.close();
           is.close();
       return "user";
           }
       catch (Exception e){
          String erroImg="更换失败，请重新上传！";
      request.setAttribute("erroImg",erroImg);
      return "user";
      }
        }
    }
