package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.ClassroomService;
import entity.Classroom;

@Controller
public class ClassroomController
{
	@Resource 
	private ClassroomService classroomService;
	
	@RequestMapping("classroomInfo")
	public ModelAndView classroomInfo(HttpServletRequest request)
	{
		List<Classroom> classroom= classroomService.getClassroom();
		ModelAndView mv = new ModelAndView("classroomInfo");
		mv.addObject("classroom",classroom);
		return mv;
	}

}
