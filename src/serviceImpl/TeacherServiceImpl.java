package serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import dao.IBaseDao;

import entity.Teacher;
import service.TeacherService;
import util.StringUtil;

@Service
@Transactional
public class TeacherServiceImpl implements TeacherService
{

	@Resource
	private IBaseDao<Teacher, Integer> baseDao;
	
	@Override
	public List<Teacher> getTeacher(int teaId)
	{
		List<Teacher> teacher = baseDao.getListByHQL("from Teacher where teaId=?", teaId);
		return teacher;
	}

 
	@Override
	public Teacher get(int teaId)
	{
		return baseDao.get(Teacher.class, teaId);
	}

	@Override
	public void deleteTeacher(int teaId) {
		 baseDao.queryHql("delete from Teacher where teaId=?",teaId);
	}
	
	@Override
	public void saveOrUpdateTeacher(String name,int age,String rank,int teaId) {
		 baseDao.queryHql("update Teacher set name=?,age=?,rank=? where teaId=? ",name,age,rank,teaId);
	}
	
	@Override
	public List<Teacher> getAll()
	{
		return baseDao.getAll(Teacher.class);
	}
}
