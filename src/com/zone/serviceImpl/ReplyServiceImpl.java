package com.zone.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zone.dao.IBaseDao;
import com.zone.entity.Article;
import com.zone.entity.Reply;
import com.zone.service.ReplyService;

@Service
public class ReplyServiceImpl implements ReplyService
{

	@Resource
	private IBaseDao<Reply, Integer> baseDao;
	
	@Override
	public void save(Reply reply)
	{
		baseDao.save(reply);
	}
}
