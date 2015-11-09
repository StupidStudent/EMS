package controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Course;

import service.CourseService;

@Controller
public class CourseController
{
	@Resource
	private CourseService courseService;
	
	@RequestMapping("courseInfo")
	public ModelAndView getCourse(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		List<Course> course =  courseService.getCourse(Integer.valueOf(request.getParameter("courseId")));
		ModelAndView mv = new ModelAndView("courseInfo");
		mv.addObject("course",course);
		return mv;
	}
}
