package com.journey.abc.protal.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Scope("prototype")
public class ProtalIndexAction {
   // @Autowired
   // private ContentService contentService;
    @RequestMapping("/")
    public String portalIndex(Model model) {
//        Long id = PropKit.use("ftp.properties").getLong("ftp.gallery");
//           List<TbContent> list=contentService.listContentByCid(id);
//       model.addAttribute("ad1List",list);
        return "index";
    }


    @RequestMapping("/{page}")
    public String page(@PathVariable("page") String page){
        return page;
    }
}
