package com.journey.abc.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: Frogzec
 * Date: 2017/11/18
 * Time: 10:31
 * Version:V1.0
 */
@Controller
public class IndexAction {

    /**
     * 跳转到首页
     * @return
     */
    @RequestMapping(value="/")
    public  String toIndex()
    {
           return "index";
    }

    @RequestMapping("/{page}")
    public String page(@PathVariable("page") String page) {

        return page;
    }

}
