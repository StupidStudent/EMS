package service;

import java.util.List;

import org.springframework.stereotype.Service;

import entity.Profession;
import entity.Teacher;

public interface ProfessionService
{
	public List<Profession> getProfessions();
	
	public Profession getProfession(int proId);
	
	public Profession get(int proId);
	
	public void deleteProfession(int proId);
	
	public void saveOrUpdateProfession(String introduction,String teachPlan,int proId);
	public void delete(int proId);
	public void saveTeachPlan(int proId, String teachPlan);
}
