package com.guozhilin.controller.Common;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @RequestMapping(value="/login", produces = MediaType.TEXT_HTML_VALUE)
    public ModelAndView login(HttpServletRequest request,Model model){
        ModelAndView modelAndView = new ModelAndView("/login");
        modelAndView.addObject("user","sun");
        String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
        String error = null;
        System.out.println("=====login controller======");
        if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误(UnknownAccountException)";
        } else if (IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误(IncorrectCredentialsException)";
        } else if (exceptionClassName != null) {
            error = "其他错误：" + exceptionClassName;
        }
        model.addAttribute("error", error);
        return modelAndView;
    }
    @RequestMapping(value="/register", produces = MediaType.TEXT_HTML_VALUE)
    public ModelAndView register(HttpServletRequest request,Model model){
        ModelAndView modelAndView = new ModelAndView("/register");
        return modelAndView;
    }

}
