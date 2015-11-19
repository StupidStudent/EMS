package serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.IBaseDao;

import entity.Book;
import entity.Course;
import entity.Student;
import service.CourseService;

@Service
@Transactional
public class CourseServiceImpl implements CourseService
{

	@Resource
	private IBaseDao<Course, Integer> baseDao;

	@Override
	public List<Course> getCousesByClassId(int classId)
	{
		List<Course> courses = baseDao.getListByHQL(
				"from Course where classId=?", classId);
		return courses;
	}

	@Override
	public List<Course> getCourse(int courseId)
	{
		List<Course> course = baseDao.getListByHQL(
				"from Course where courseId=?", courseId);
		return course;
	}

	public Course get(int courseId)
	{
		return baseDao.get(Course.class, courseId);
	}

	@Override
	public void update(Course course)
	{
		baseDao.update(course);
	}

	@Override
	public List<Course> getCourses()
	{
		return baseDao.getAll(Course.class);
	}
}
