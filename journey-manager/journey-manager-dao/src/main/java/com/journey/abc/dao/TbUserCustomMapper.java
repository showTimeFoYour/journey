package com.journey.abc.dao;

import com.journey.abc.pojo.po.TbUser;

import java.util.List;
import java.util.Map;

public interface TbUserCustomMapper {
 

    int countItems(Map<String, Object> map);

    List<TbUser> listUsersByPage(Map<String, Object> map);
}