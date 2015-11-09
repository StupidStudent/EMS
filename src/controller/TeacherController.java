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

import service.TeacherService;


import entity.Teacher;

@Controller
public class TeacherController
{
	@Resource 
	private TeacherService teacherService;
	
	
	
	@RequestMapping("teacherInfo")
	public ModelAndView getClassName(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		List<Teacher> teacher =  teacherService.getTeacher(Integer.valueOf(request.getParameter("teaId")));
		ModelAndView mv = new ModelAndView("teacherInfo");
		mv.addObject("teacher",teacher);
		return mv;
	}
	
	@RequestMapping("delTeacherInfo")
	public String deleteTeacher(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		List<Teacher> teacher =  teacherService.getTeacher(Integer.valueOf(request.getParameter("teaId")));
		teacherService.deleteTeacher(Integer.valueOf(request.getParameter("teaId")));
		return "teacherInfo"; //返回teacherInfo.jsp
	}

	@RequestMapping("updateTeacherInfo")
	public String saveOrUpdateTeacher(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		teacherService.saveOrUpdateTeacher(String.valueOf(request.getParameter("name")),Integer.valueOf(request.getParameter("age")),String.valueOf(request.getParameter("rank")),Integer.valueOf(request.getParameter("teaId")));
		return "teacherInfo"; //返回teacherInfo.jsp
	}
}