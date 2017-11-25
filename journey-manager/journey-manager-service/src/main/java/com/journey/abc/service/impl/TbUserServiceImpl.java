package com.journey.abc.service.impl;

import com.journey.abc.dao.TbUserMapper;
import com.journey.abc.pojo.po.TbUser;
import com.journey.abc.pojo.po.TbUserExample;
import com.journey.abc.service.TbUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TbUserServiceImpl implements TbUserService {
    Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TbUserMapper tbUserDao;

    @Override
    public TbUser getByUserName(TbUser tbUser) {
        TbUser user = null;
        try {
            tbUser.setIsadmin((byte)1);
            TbUserExample example = new TbUserExample();
            TbUserExample.Criteria criteria = example.createCriteria();
            criteria.andUsernameEqualTo(tbUser.getUsername());
            criteria.andIsadminEqualTo(tbUser.getIsadmin());
            List<TbUser> list = tbUserDao.selectByExample(example);
            if (list.size() > 0) {
                user = list.get(0);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return user;
    }
}
