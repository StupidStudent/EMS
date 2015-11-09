package service;

import java.util.List;

import entity.Student;

public interface StudentService
{
	public List<Student>  getStudent(int stuId);
	
	public Student get(int stuId);

	public void deleteStudent(int stuId);
	
	public void saveOrUpdateStudent(int classId,int userId,String name,int age,String address,int stuId);
}