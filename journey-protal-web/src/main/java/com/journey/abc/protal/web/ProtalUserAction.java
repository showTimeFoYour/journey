package com.journey.abc.protal.web;

import com.journey.abc.pojo.po.TbUser;
import com.journey.abc.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@Scope("prototype")
public class ProtalUserAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserService userService;

    /*登录
      * ajax加注解@ResponseBody ，在这里，return "index" 不是返回逻辑视图，而是字符串 登录
      */
    @RequestMapping("/userlogin")
    @ResponseBody
    public String doLogin(TbUser tbUser, HttpSession session) throws Exception {
        String mess = "2";
        System.out.println("111");
        if (tbUser != null) {
            if (tbUser.getUsername().equals("")) {
                mess = "0";// 用户名不为空
            } else if (tbUser.getUpwd().equals("")) {
                mess = "1";// 密码不为空
            } else {
                TbUser findUser = userService.findByUsername(tbUser);
                if (findUser != null) {
                    // 匹配密码
                    if (findUser.getUpwd().equals(tbUser.getUpwd())) {
                        // 密码也相等，就放入session中
                        session.setAttribute("sessionUser", findUser);
                        return "index";
                    } else {
                        mess = "2";// 用户名或密码错误
                    }
                } else {
                    mess = "2";
                }
            }
        }
        return mess;
    }


    /*用户注册
       * ajax加注解@ResponseBody ，在这里，return "index" 不是返回逻辑视图，而是字符串 登录
       */
    @RequestMapping("/userRegister")
    @ResponseBody
    public String doRegister(TbUser tbUser, HttpSession session) throws Exception {
//        String gender = tbUser.getGender();


        String mess = "2";

        if (tbUser != null) {
            if (tbUser.getUsername().equals("")) {
                mess = "0";// 用户名不为空
            } else if (tbUser.getUpwd().equals("")) {
                mess = "1";// 密码不为空
            } else {
                TbUser findUser = userService.findByUsername(tbUser);
                if (findUser == null) {
                   boolean bool =  userService.addUser(tbUser);
                   if(bool) {
                       session.setAttribute("sessionUser", tbUser);
                       return "index";
                   }else {
                       return "系统故障";
                   }

                } else {
                    mess = "2";//用户名已存在
                }
            }
        }
        return mess;
    }



}
