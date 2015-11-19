package serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import dao.IBaseDao;

import entity.ClassTeam;
import entity.Profession;
import entity.Teacher;
import service.ClassTeamService;
import util.StringUtil;

@Service
@Transactional
public class ClassTeamServiceImpl implements ClassTeamService
{

	@Resource
	private IBaseDao<ClassTeam, Integer> baseDao;
	
	@Override
	public List<ClassTeam> getClassesByProId(int proId)
	{
		List<ClassTeam> classes = baseDao.getListByHQL("from ClassTeam where proId=?", proId);
		return classes;
	}
	
	@Override
	public ClassTeam get(int classId)
	{
		return baseDao.get(ClassTeam.class, classId);
	}

	@Override
	public List<ClassTeam> getClassTeam()
	{
		return baseDao.getAll(ClassTeam.class);
	}
	
	
}
