package com.hisoft.appliinfo.controller;

import com.hisoft.appliinfo.pojo.BackendUser;
import com.hisoft.appliinfo.pojo.DevUser;
import com.hisoft.appliinfo.service.backendUser.BackendUserService;
import com.hisoft.appliinfo.service.devUser.DevUserService;
import com.hisoft.appliinfo.tools.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    private DevUserService devUserService;
    @Autowired
    private BackendUserService backendUserService;

    @RequestMapping("/devLogin.html")
    public String devLogin() {
        return "loginDev";
    }

    @RequestMapping("/devLogin.do")
    public String doDevLogin(@RequestParam(value = "username", defaultValue = "") String username,
                             @RequestParam(value = "password",defaultValue = "") String password,
                             Model model,
                             HttpSession session) {
        DevUser login = devUserService.login(username, password);
        if (login!=null){
            session.setAttribute(Constants.USER_SESSION,login);
            return "redirect:/devIndex.html";
        }{
            model.addAttribute("error", "用户名或密码不正确");
            return "loginDev";
        }
    }
    @RequestMapping("/devIndex.html")
    public String devIndex(){
        return "devIndex";
    }
    @RequestMapping("/backendLogin.do")
    public String doBackendLogin(@RequestParam(value = "username", defaultValue = "") String username,
                                 @RequestParam(value = "password",defaultValue = "") String password,
                                 Model model,
                                 HttpSession session) {
        BackendUser login = backendUserService.login(username,password);
        if (login!=null){
            session.setAttribute(Constants.USER_SESSION,login);
            return "redirect:/backendIndex.html";
        }{
            model.addAttribute("error", "用户名或密码不正确");
            return "loginBackend";
        }
    }

    @RequestMapping("/backendLogin.html")
    public String backendLogin() {
        return "loginBackend";
    }
    @RequestMapping("/backendIndex.html")
    public String backendIndex(){
        return "backendIndex";
    }

    /**
     * 跳转admin.jsp页面
     * @return
     */
    @RequestMapping(value = "/admin.html")
    public String toAdmin(){
        return "/statics/jsp/admin.jsp";
    }

}
