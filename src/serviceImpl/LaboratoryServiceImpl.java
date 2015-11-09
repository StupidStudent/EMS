package serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.IBaseDao;
import entity.Laboratory;

import service.LaboratoryService;

@Service
public class LaboratoryServiceImpl implements LaboratoryService
{
	
	@Resource
	private IBaseDao<Laboratory, Integer> baseDao;
	
	@Override
	public List<Laboratory> getLaboratory()
	{
		return baseDao.getAll(Laboratory.class);
	}
}
