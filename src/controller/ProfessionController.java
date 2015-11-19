package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.CourseService;
import service.ProfessionService;
import service.SyllabusService;
import entity.Course;
import entity.Profession;
import entity.Syllabus;
import entity.Teacher;

@Controller
public class ProfessionController
{
	@Resource 
	private ProfessionService professionService;
	
	@Resource
	private CourseService courseService;
	
	@Resource
	private SyllabusService syllabusService;
	
	@RequestMapping("professionInfo")
	public ModelAndView professionInfo(HttpServletRequest request)
	{
		List<Profession> professions = professionService.getProfessions();
		ModelAndView mv = new ModelAndView("professionInfo");
		mv.addObject("professions",professions);
		return mv;
	}
	
	@RequestMapping("professionInfo2")
	public ModelAndView professionInfo2(HttpServletRequest request)
	{
		List<Profession> professions = professionService.getProfessions();
		ModelAndView mv = new ModelAndView("professionInfo2");
		mv.addObject("professions",professions);
		return mv;
	}
	
	@RequestMapping("delProInfo")
	public ModelAndView deleteProfession(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		professionService.deleteProfession(Integer.valueOf(request.getParameter("proId")));
		return this.professionInfo(request); //返回professionInfo.jsp
	}
	
	@RequestMapping("bookManage1")
	public ModelAndView bookManage1(HttpServletRequest request)
	{
		ModelAndView mv = this.professionInfo(request);
		mv.setViewName("bookManage1");
		return mv;
	}
	
	@RequestMapping("deletePro")
	public String deletePro(HttpServletRequest request)
	{
		professionService.delete(2);
		return "professionInfo";
	}
	
	@RequestMapping("teachPlan1")
	public ModelAndView teachPlan1(HttpServletRequest request)
	{
		ModelAndView mv = this.professionInfo(request);
		mv.setViewName("teachPlan1");
		return mv;
	}
	
	@RequestMapping("teachTask")
	public ModelAndView teachTask(HttpServletRequest request){
		ModelAndView mv = this.professionInfo(request);
		mv.setViewName("teachTask1");
		return mv;
	}
	
	@RequestMapping("getTeachPlan")
	public ModelAndView getTeachPlan(HttpServletRequest request)
	{
		int proId = Integer.valueOf(request.getParameter("proId"));
		Profession p = professionService.getProfession(proId);
		List<Course> courses = courseService.getCourses();
		ModelAndView mv = new ModelAndView("teachPlan2");
		mv.addObject("profession",p);
		mv.addObject("courses",courses);
		return mv;
	}
	
	@RequestMapping("saveOrUpdateProfession")
	public String saveOrUpdateProfession(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		Profession p = new Profession();
		p.setName(request.getParameter("name"));
		p.setIntroduction(request.getParameter("introduction"));
		professionService.saveOrUpdateProfession(p);
		return "redirect:/professionInfo"; //返回professionInfo.jsp
	}
	@RequestMapping("saveTeachPlan")
	public void saveTeachPlan(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		professionService.saveTeachPlan(Integer.valueOf(request.getParameter("proId")), request.getParameter("teachPlan"));
		PrintWriter out = response.getWriter();
		out.print("保存成功");
		out.flush();
	}
}


