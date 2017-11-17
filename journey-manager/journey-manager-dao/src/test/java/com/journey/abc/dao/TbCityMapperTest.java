package com.journey.abc.dao;

import com.journey.abc.pojo.po.TbCity;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class TbCityMapperTest {
    @Autowired
    private TbCityMapper TbCityDao;

    @Test
    public void add() throws Exception {
        TbCity city=TbCityDao.selectByPrimaryKey(1);
        System.out.println(city);
    }

}