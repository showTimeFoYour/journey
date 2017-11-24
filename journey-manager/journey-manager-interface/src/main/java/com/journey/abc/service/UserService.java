package com.journey.abc.service;

import com.journey.abc.pojo.po.TbUser;

public interface UserService {
    TbUser findByUsername(TbUser tbUser);

    boolean addUser(TbUser tbUser);
}
