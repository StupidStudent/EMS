package serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.IBaseDao;

import entity.Syllabus;
import service.SyllabusService;

@Service
@Transactional
public class SyllabusServiceImpl implements SyllabusService
{

	@Resource
	private IBaseDao<Syllabus, Integer> baseDao;
	
	@Override
	public List<Syllabus> getSyllabusesByClassId(int classId)
	{
		return baseDao.getListByHQL("from Syllabus where classId=?", classId);
	}

}
