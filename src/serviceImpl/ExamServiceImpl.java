package serviceImpl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.IBaseDao;

import entity.Course;
import entity.Exam;
import service.CourseService;
import service.ExamService;
@Service
public class ExamServiceImpl  implements ExamService {

	@Resource
	private IBaseDao baseDao;
	
	@Override
	public void save(Exam exam) {
		baseDao.save(exam);
	};
}