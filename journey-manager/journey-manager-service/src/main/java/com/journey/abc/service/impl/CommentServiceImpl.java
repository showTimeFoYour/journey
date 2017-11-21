package com.journey.abc.service.impl;

import com.journey.abc.dao.TbCommentCustomMapper;
import com.journey.abc.dao.TbCommentStatusMapper;
import com.journey.abc.dto.Order;
import com.journey.abc.dto.Page;
import com.journey.abc.dto.Result;
import com.journey.abc.pojo.po.TbCommentStatus;
import com.journey.abc.pojo.po.TbCommentStatusExample;
import com.journey.abc.pojo.vo.TbCommentCustom;
import com.journey.abc.service.CommentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CommentServiceImpl implements CommentService {
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TbCommentCustomMapper tbCommentCustomDao;
    @Autowired
    private TbCommentStatusMapper tbCommentStatusDao;
    @Override
    public Result<TbCommentCustom> listCommentsByPage(Page page, Order order) {
        Result<TbCommentCustom> result=null;


        try {
            result=new Result<>();
            Map<String,Object>map=new HashMap<>();
            map.put("page",page);
            map.put("order",order);
          int total=  tbCommentCustomDao.countComments(map);
            result.setTotal(total);
            List<TbCommentCustom>rows=tbCommentCustomDao.listCommentHotelByPage(map);
            List<TbCommentCustom>rowi=tbCommentCustomDao.listCommentItemByPage(map);
            List<TbCommentCustom>rowp=tbCommentCustomDao.listCommentPlaceByPage(map);
            rows.addAll(rowi);
            rows.addAll(rowp);

            result.setRows(rows);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        return result;
    }

    @Override
    public int updateComentsByComent_Id(List<Long> ids, String url) {
        int i=0;
        try {
            if(url.contains("bacth")){
                TbCommentStatus record=new TbCommentStatus();
                record.setCommentState( (byte)3);
//         创建更新模板
                TbCommentStatusExample  example=new TbCommentStatusExample();
                TbCommentStatusExample.Criteria criteria = example.createCriteria();
                criteria.andCommentIdIn(ids);
                i=tbCommentStatusDao.updateByExampleSelective(record,example);
            }else{
                TbCommentStatus record=new TbCommentStatus();
                record.setCommentState( (byte)2);
//         创建更新模板
                TbCommentStatusExample  example=new TbCommentStatusExample();
                TbCommentStatusExample.Criteria criteria = example.createCriteria();
                criteria.andCommentIdIn(ids);
                i=tbCommentStatusDao.updateByExampleSelective(record,example);
            }

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        return i;
      }



}
