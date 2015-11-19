package serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.IBaseDao;

import entity.Profession;
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

	@Override
	public void saveOrUpdateSyllabus(Syllabus syllabus)
	{
		baseDao.saveOrUpdate(syllabus);
	}

	@Override
	public boolean deleteSyllabus(int syllabusId)
	{
		return baseDao.deleteById(Syllabus.class, syllabusId);
	}
	
	@Override
	public Syllabus get(int syllabusId)
	{
		return baseDao.get(Syllabus.class, syllabusId);
	}
	
	@Override
	public List<Syllabus> getTeachPlan(Profession profession)
	{
		return baseDao.getListByHQL("from Syllabus where proId=? and classteam.classId is null", profession.getProId());
	}
}
