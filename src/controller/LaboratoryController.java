package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.LaboratoryService;
import entity.Laboratory;

@Controller
public class LaboratoryController
{
	@Resource 
	private LaboratoryService laboratoryService;
	
	@RequestMapping("laboratoryInfo")
	public ModelAndView laboratoryInfo(HttpServletRequest request)
	{
		List<Laboratory> laboratory= laboratoryService.getLaboratory();
		ModelAndView mv = new ModelAndView("laboratoryInfo");
		mv.addObject("laboratory",laboratory);
		return mv;
	}

}
