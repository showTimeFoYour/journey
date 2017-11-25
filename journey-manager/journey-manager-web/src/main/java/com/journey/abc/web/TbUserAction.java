package com.journey.abc.web;

import com.journey.abc.pojo.po.TbUser;
import com.journey.abc.service.TbUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class TbUserAction {
    Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TbUserService userService;
@RequestMapping("useradmin/login")
@ResponseBody
    public  String login(TbUser tbUser, HttpServletRequest request){
        String mess="";
        if(tbUser!=null){
            if("".equals(tbUser.getUsername())){
                mess="1";//用户名为空
            }else if("".equals(tbUser.getUpwd())){
                mess="2";//密码为空
            }else {

                TbUser findUser= userService.getByUserName(tbUser);
                if(tbUser.getUsername().equals(findUser.getUsername())&&tbUser.getUpwd().equals(findUser.getUpwd())){
                    mess="3";//该用户为管理员
                    HttpSession session = request.getSession();
                    session.setAttribute("session_user",findUser);

                }else{
                    mess="0"; //用户名或密码错误
                }
            }
        }
        return mess;
    }

}
