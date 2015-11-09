package service;

import java.util.List;

import entity.Teacher;

public interface TeacherService
{
	public List<Teacher>  getTeacher(int teaId);
	
	public Teacher get(int teaId);

	public void deleteTeacher(int teaId);
	
	public void saveOrUpdateTeacher(String name,int age,String rank,int teaId);

}