package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import entity.Book;
import entity.Profession;
import entity.Syllabus;
import entity.Teacher;

import service.BookService;
import service.ClassTeamService;
import service.SyllabusService;
import service.TeacherService;


@Controller
public class SyllabusController
{
	@Resource
	private SyllabusService syllabusService;
	@Resource
	private ClassTeamService classTeamService;
	@Resource
	private TeacherService teacherService;
	@Resource
	private BookService bookService;
	
	@RequestMapping(value="saveOrUpdateSyllabus")
	public ModelAndView saveOrUpdateSyllabus(Syllabus syllabus,HttpServletRequest request,RedirectAttributes attr){
		//根据教学计划安排教学任务
		if(request.getParameter("teachPlanId") !=  null){
			int teachPlanId = Integer.valueOf(request.getParameter("teachPlanId"));
			Syllabus teachPlan = syllabusService.get(teachPlanId);
			syllabus.setYear(teachPlan.getYear());
			syllabus.setTerm(teachPlan.getTerm());
			syllabus.setHour(teachPlan.getHour());
			syllabus.setProfession(teachPlan.getProfession());
			syllabus.setCourse(teachPlan.getCourse());
			syllabus.getClassteam().getClassId();
			attr.addAttribute("classId",syllabus.getClassteam().getClassId());
		}
		syllabusService.saveOrUpdateSyllabus(syllabus);
		attr.addAttribute("proId",syllabus.getProfession().getProId());
		ModelAndView mv = new ModelAndView("redirect:getTeachTask");
		return mv;
	}
	
	
	@RequestMapping(value="deleteSyllabus")
	public void deleteSyllabus(HttpServletRequest request,HttpServletResponse response) throws IOException{
		int syllabusId = Integer.valueOf(request.getParameter("syllabusId"));
		boolean result = syllabusService.deleteSyllabus(syllabusId);
		response.getWriter().print(result);
	}
	
	@RequestMapping(value="getTeachTask")
	public ModelAndView getTeachTask(HttpServletRequest request){
		int classId = Integer.valueOf(request.getParameter("classId"));
		Profession profession = classTeamService.get(classId).getProfession();
		List<Syllabus> syllabuses = syllabusService.getSyllabusesByClassId(classId);
		List<Syllabus> teachPlans = syllabusService.getTeachPlan(profession);
		List<Teacher> teachers = teacherService.getAll();
		List<Book> books = bookService.getAll();
		ModelAndView mv = new ModelAndView("teachTask2");
		mv.addObject("syllabuses", syllabuses);
		mv.addObject("teachPlans",teachPlans);
		mv.addObject("teachers",teachers);
		mv.addObject("books",books);
		mv.addObject("classId",classId);
		return mv;
	}
	
}
