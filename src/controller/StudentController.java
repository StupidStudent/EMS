package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.StudentService;

import entity.Student;

@Controller
public class StudentController
{
	@Resource 
	private StudentService studentService;
	

	@RequestMapping("delStudentInfo")
	public String deleteStudent(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		List<Student> student =  studentService.getStudent(Integer.valueOf(request.getParameter("stuId")));
		studentService.deleteStudent(Integer.valueOf(request.getParameter("stuId")));
		return "studentInfo"; //返回delStudentInfo.jsp
	}
	
	
	@RequestMapping("studentInfo")
	public ModelAndView getClassName(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		List<Student> student =  studentService.getStudent(Integer.valueOf(request.getParameter("stuId")));
		ModelAndView mv = new ModelAndView("studentInfo");
		mv.addObject("student",student);
		return mv;
	}
	
	@RequestMapping("updateStudentInfo")
	public String saveOrUpdateStudent(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		studentService.saveOrUpdateStudent(Integer.valueOf(request.getParameter("classId")),Integer.valueOf(request.getParameter("userId")),String.valueOf(request.getParameter("name")),Integer.valueOf(request.getParameter("age")),String.valueOf(request.getParameter("address")),Integer.valueOf(request.getParameter("stuId")));
		return "studentInfo"; //返回studentInfo.jsp
	}

}
