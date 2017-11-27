package com.journey.abc.service.impl;

import com.journey.abc.dao.TbItemCustomMapper;
import com.journey.abc.dao.TbItemMapper;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbItem;
import com.journey.abc.pojo.po.TbItemExample;
import com.journey.abc.pojo.vo.TbItemCustom;
import com.journey.abc.pojo.vo.TbItemQuery;
import com.journey.abc.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: Frogzec
 * Date: 2017/11/18
 * Time: 14:40
 * Version:V1.0
 */
@Service
public class ItemServiceImpl implements ItemService {


    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TbItemMapper itemDao;

    @Autowired
    private TbItemCustomMapper itemCustomDao;

    //分页查询
    @Override
    public Result<TbItemCustom> listItemsByPage(Page page,TbItemQuery tbItemQuery) {
        Result<TbItemCustom> result = null;
        try {
              Map<String,Object>  map = new HashMap<>();
              map.put("page",page);
              map.put("tbItemQuery",tbItemQuery);
              List<TbItemCustom> list =itemCustomDao.listItemsByPage(map);
              int count = itemCustomDao.countItems();
              result = new Result<>();
              result.setRows(list);
              result.setTotal(count);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 批量删除(将状态修改为3)
     * @return
     */
    @Override
    public int updateItemsByIds(List<Long> ids) {

        int i = 0;

        try {
            //update from tb_item set status = 3 where id in ids
            TbItem record = new TbItem();
            record.setStatus(3);
            //创建模板
            TbItemExample example = new TbItemExample();
            TbItemExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            //更新状态
             i += itemDao.updateByExampleSelective(record, example);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 取消订单
     * @param ids
     * @return
     */
    @Override
    public int cancelItemsByIds(List<Long> ids) {

        int i = 0;

        try {
            //update from tb_item set status = 3 where id in ids
            TbItem record = new TbItem();
            record.setStatus(0);
            //创建模板
            TbItemExample example = new TbItemExample();
            TbItemExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            //更新状态
            i += itemDao.updateByExampleSelective(record, example);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 确认订单
     * @param ids
     * @return
     */
    @Override
    public int confirmItemsByIds(List<Long> ids) {

        int i = 0;

        try {
            TbItem record = new TbItem();
            record.setStatus(1);
            //创建模板
            TbItemExample example = new TbItemExample();
            TbItemExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            //更新状态
            i += itemDao.updateByExampleSelective(record, example);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;

    }

    /**
     * 根据ID获得信息
     * @param id
     * @return
     */
    @Override
    public TbItemCustom getItemByid(Long id) {

        TbItemCustom  item = null;
        try {
            //查询
              item = itemCustomDao.selectItemByid(id);
        }catch (Exception e)
        {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return item;
    }

    /**
     * 修改信息
     * @param item
     * @return
     */
    @Override
    public int updateItemById(TbItem item) {

        int  i = 0;
        try {
            //修改
            TbItemExample example = new TbItemExample();
            TbItemExample.Criteria criteria = example.createCriteria();
            criteria.andIdEqualTo(item.getId());


            i = itemDao.updateByExampleSelective(item, example);

        }catch (Exception e)
        {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 新增订单模块
     */
    @Override
    public int saveItems(TbItem tbItem) {

        int  i = 0;
        try {
            //新增订单
            tbItem.setStatus(0);
            tbItem.setHotelId(1L);
            tbItem.setCreated(new Date());
            i =itemDao.insertSelective(tbItem);

        }catch (Exception e)
        {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
         return i;
    }
}
