package serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import dao.IBaseDao;

import entity.Student;
import service.StudentService;

@Service
public class StudentServiceImpl implements StudentService
{

	@Resource
	private IBaseDao<Student, Integer> baseDao;
	
	@Override
	public List<Student> getStudent(int stuId)
	{
		List<Student> student = baseDao.getListByHQL("from Student where stuId=?", stuId);
		return student;
	}
	
	@Override
	public Student get(int stuId)
	{
		return baseDao.get(Student.class, stuId);
	}
	
	@Override
	public void deleteStudent(int stuId) {
		 baseDao.queryHql("delete from Student where stuId=?", stuId);
	}
	
	@Override
	public void saveOrUpdateStudent(int classId,int userId,String name,int age,String address,int stuId) {
		 baseDao.queryHql("update Student set classId=?,userId=?,name=?,age=?,address=? where stuId=?",classId,userId,name,age,address,stuId);
		 
	}

}
