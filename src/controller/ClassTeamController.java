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

import service.ClassTeamService;
import entity.ClassTeam;
import entity.Profession;
import entity.Syllabus;
import entity.Teacher;

@Controller
public class ClassTeamController
{
	
	@Resource
	private ClassTeamService classTeamService;
	
	/**
	 * 获取班级名称列表（返回html的<option>格式）
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("getClassList")
	public void getClassName(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		List<ClassTeam> classes =  classTeamService.getClassesByProId(Integer.valueOf(request.getParameter("proId")));
		String options = "";
		for(Iterator<ClassTeam> i = classes.iterator(); i.hasNext();)
		{
			ClassTeam c = i.next();
			options += "<option id='"+c.getClassId()+"' value="+c.getClassId()+">"+c.getName()+"</option>";
		}
		
		PrintWriter out = response.getWriter();
		out.print(options);
		out.flush();
	}
	
	@RequestMapping("getCourseList")
	private void getCourseList(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		ClassTeam classTeam = classTeamService.get(Integer.valueOf(request.getParameter("classId")));
		String options = "";
		for(Iterator<Syllabus> i = classTeam.getSyllabuses().iterator(); i.hasNext();)
		{
			Syllabus s = i.next();
			options += "<option id='"+s.getCourse().getCourseId()+"' value="+s.getCourse().getCourseId()+">"+s.getCourse().getName()+"</option>";
		}
		
		PrintWriter out = response.getWriter();
		out.print(options);
		out.flush();	
	}
	
	@RequestMapping("classInfo")
	public ModelAndView classTeamInfo(HttpServletRequest request)
	{
		List<ClassTeam> classTeam = classTeamService.getClassTeam();
		ModelAndView mv = new ModelAndView("classInfo");
		mv.addObject("classTeam",classTeam);
		return mv;
	}
}
