package serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import service.ProfessionService;
import dao.IBaseDao;
import entity.Profession;
import entity.Teacher;

@Service
@Transactional //注解开启事务
public class ProfessionServiceImpl implements ProfessionService
{
	
	@Resource
	private IBaseDao<Profession, Integer> baseDao;
	
	@Override
	public List<Profession> getProfessions()
	{
		return baseDao.getAll(Profession.class);
	}
	
	@Override
	public void delete(int proId)
	{
		baseDao.deleteById(Profession.class, proId);
	}
	
	
	@Override
	public Profession getProfession(int proId)
	{
		return baseDao.get(Profession.class, proId);
	}
	
	@Override
	public Profession get(int proId)
	{
		return baseDao.get(Profession.class, proId);
	}
	
	@Override
	public void deleteProfession(int proId) {
		 baseDao.queryHql("delete from Profession where proId=?",proId);
	}
	
	@Override
	public void saveOrUpdateProfession(Profession t) {
		 baseDao.saveOrUpdate(t);
	}
	public void saveTeachPlan(int proId,String teachPlan)
	{
		Profession p = baseDao.get(Profession.class, proId);
		p.setTeachPlan(teachPlan);
		baseDao.save(p);
	}
	
}
