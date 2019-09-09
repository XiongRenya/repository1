package com.oc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/changePage")
public class ChangePage {
    //返回登录页面
    @RequestMapping("/loginPage")
    public String loginPage(){
        return "login";
    }
   //返回注册页面
    @RequestMapping("/registerPage")
    public String registerPage()
    {
        return "register";
    }
    //返回首页
    @RequestMapping("/indexPage")
    public String indexPage(){ return "index"; }
    //返回用户信息页
    @RequestMapping("/userPage")
    public String userPage(){ return "user"; }

    //返回课程页
    @RequestMapping("/listPage")
    public String listPage(){ return "list"; }
}
