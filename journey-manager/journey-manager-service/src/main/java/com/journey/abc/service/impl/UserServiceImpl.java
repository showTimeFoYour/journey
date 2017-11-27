package com.journey.abc.service.impl;

import com.journey.abc.dao.TbUserCustomMapper;
import com.journey.abc.dao.TbUserMapper;
import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbUser;
import com.journey.abc.pojo.po.TbUserExample;
import com.journey.abc.pojo.vo.TbUserQuery;
import com.journey.abc.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TbUserMapper tbUserMapper;

    @Autowired
    private TbUserCustomMapper tbUserCustomMapper;


//    前台根据用户名查询
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

//前台注册用户
    @Override
    public boolean addUser(TbUser tbUser) {
        int i = tbUserMapper.insertSelective(tbUser);
        if (i>0) {
            return true;
        }
        return false;
    }

//    后台用户分页显示
    @Override
    public Result<TbUser> listUsersByPage(Page page, Order order, TbUserQuery query) {
        Result<TbUser> result = null;

        try {
//            0 创建一个Map封装前台传过来的参数
            Map<String,Object> map=new HashMap<String,Object>();
            map.put("page",page);
            map.put("order",order);
            map.put("query",query);
//            Map<String,Object>
            //1 创建一个响应参数实体类
            result = new Result<TbUser>();
            //2 对total进行设值(符合条件的总记录数)
//            这里的参数是query的话，就报错了，错过一次
            int total = tbUserCustomMapper.countItems(map);
            result.setTotal(total);
            //3 对rows进行设值(指定页码显示记录集合)
            List<TbUser> list = tbUserCustomMapper.listUsersByPage(map);
            result.setRows(list);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }

//    删除用户，设置权限为3
    @Override
    public int updateBatchbatchRemove(List<Long> ids) {
        int i = 0;
        try {
            //准备商品对象，这个对象包含了状态为3的字段
            TbUser tbUser = new TbUser();
            tbUser.setIsadmin((byte) 3);

            //创建更新模板 update tb_item set status=? where id in (?,?,?),现在还什么都没有
            // 下面3行创建了查询模板
            TbUserExample example = new TbUserExample();
//            TbItemExample里面有个内部类是Criteria，创建一个查询对象
            TbUserExample.Criteria criteria = example.createCriteria();
//            下面函数的参数是Long型的数组，ids符合条件，给查询对象加内容
//            执行完下面这一行，意味着ids已经填充了上面sql语句的后面的？
            criteria.andIdIn(ids);
            //执行更新，这个方法在Mapper.xml里面是动态sql的
//            执行完下面这一行，意味着已经填充了上面sql语句的前面的？
            i =tbUserMapper.updateByExampleSelective(tbUser,example);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    //提升用户权限至管理员操作
    @Override
    public int updateBatchbatchUp(List<Long> ids) {
        int i = 0;
        try {
            TbUser tbUser = new TbUser();
            tbUser.setIsadmin((byte) 1);
            TbUserExample example = new TbUserExample();
            TbUserExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            i =tbUserMapper.updateByExampleSelective(tbUser,example);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
