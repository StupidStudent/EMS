package serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.IBaseDao;
import entity.Classroom;

import service.ClassroomService;

@Service
public class ClassroomServiceImpl implements ClassroomService
{
	
	@Resource
	private IBaseDao<Classroom, Integer> baseDao;
	
	@Override
	public List<Classroom> getClassroom()
	{
		return baseDao.getAll(Classroom.class);
	}
}
