package com.journey.abc.dao;

import com.journey.abc.pojo.vo.TbItemCustom;

import java.util.List;
import java.util.Map;

/**
 * User: Frogzec
 * Date: 2017/11/18
 * Time: 15:39
 * Version:V1.0
 */
public interface TbItemCustomMapper {
    List<TbItemCustom> listItemsByPage(Map<String, Object> map);

    int countItems();

    TbItemCustom selectItemByid(Long id);


}
