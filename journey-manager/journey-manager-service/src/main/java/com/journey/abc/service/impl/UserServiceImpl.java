package com.journey.abc.service.impl;

import com.journey.abc.dao.TbUserMapper;
import com.journey.abc.pojo.po.TbUser;
import com.journey.abc.pojo.po.TbUserExample;
import com.journey.abc.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TbUserMapper tbUserMapper;

    @Override
    public TbUser findByUsername(TbUser tbUser) {
        TbUser tbUser1=null;
        try{

            TbUserExample example=new TbUserExample();
            TbUserExample.Criteria criteria=example.createCriteria();
            criteria.andUsernameEqualTo(tbUser.getUsername());
            //执行查询
            List<TbUser> list = tbUserMapper.selectByExample(example);

            if (list!=null && list.size()>0){
                tbUser1=list.get(0);

            }
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return tbUser1;
    }


    @Override
    public boolean addUser(TbUser tbUser) {
        int i = tbUserMapper.insertSelective(tbUser);
        if (i>0) {
            return true;
        }
        return false;
    }
}
