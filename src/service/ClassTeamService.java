package service;

import java.util.List;

import entity.ClassTeam;


public interface ClassTeamService
{
	public List<ClassTeam>  getClassesByProId(int proId);
	
	public ClassTeam get(int classId);
	
	public List<ClassTeam> getClassTeam();
	

}
