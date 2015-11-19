package service;

import java.util.List;

import entity.Course;
import entity.Student;

public interface CourseService
{
	public  List<Course> getCousesByClassId(int classId);
	
	public List<Course>  getCourse(int courseId);

	public List<Course> getCourses();
	
	public Course get(int courseId);

	void update(Course course);
}
