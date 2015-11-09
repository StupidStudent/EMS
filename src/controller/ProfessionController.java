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

import service.ProfessionService;
import entity.Profession;
import entity.Teacher;

@Controller
public class ProfessionController
{
	@Resource 
	private ProfessionService professionService;
	
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
	
	@RequestMapping("getTeachPlan")
	public ModelAndView getTeachPlan(HttpServletRequest request)
	{
		Profession p = professionService.getProfession(Integer.valueOf(request.getParameter("proId")));
		ModelAndView mv = new ModelAndView("teachPlan2");
		mv.addObject("profession",p);
		return mv;
	}
	
	@RequestMapping("updateProfessionInfo")
	public String saveOrUpdateProfession(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		professionService.saveOrUpdateProfession(String.valueOf(request.getParameter("introduction")),String.valueOf(request.getParameter("teachPlan")),Integer.valueOf(request.getParameter("proId")));
		return "professionInfo"; //返回professionInfo.jsp
	}
	@RequestMapping("saveTeachPlan")
	public void saveTeachPllan(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		professionService.saveTeachPlan(Integer.valueOf(request.getParameter("proId")), request.getParameter("teachPlan"));
		PrintWriter out = response.getWriter();
		out.print("保存成功");
		out.flush();
	}
}


