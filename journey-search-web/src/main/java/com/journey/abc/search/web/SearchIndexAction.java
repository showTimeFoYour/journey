package com.journey.abc.search.web;

import com.journey.abc.pojo.vo.TbSearchHotelResult;
import com.journey.abc.service.SearchHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class SearchIndexAction {

    @Autowired
    private SearchHotelService searchHotelService;

    @RequestMapping("/")
    public String toIndex()
    {
        return "search";
    }

    @RequestMapping("/search")
    public  String  searchHotelList(String keyword,
                                    @RequestParam(defaultValue = "1") Integer page, Model model) throws Exception {

        if (keyword != null) {
            keyword = new String(keyword.getBytes("iso-8859-1"), "utf-8");
            //查询商品列表
             TbSearchHotelResult searchResult = searchHotelService.search(keyword, page, 60);
            //把结果传递给页面
            model.addAttribute("query", keyword);
            model.addAttribute("totalPages", searchResult.getTotalPages());
            model.addAttribute("page", page);
            model.addAttribute("recourdCount", searchResult.getRecordCount());
            model.addAttribute("hotelList",searchResult.getHotelList());
        }

        //返回逻辑视图
        return "search";
    }

}
