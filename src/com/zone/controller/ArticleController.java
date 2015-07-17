package com.zone.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zone.entity.Article;
import com.zone.service.ArticleService;

@Controller
public class ArticleController
{
	@Resource
	private ArticleService articleService;
	
	@RequestMapping("/article")
	public ModelAndView article(HttpServletRequest request)
	{
		int id = Integer.valueOf(request.getParameter("id"));
		Article article = articleService.find(id);
		article.getSite().getName();
		article.getSite().getKind().getKindId();
		ModelAndView	 mv = new ModelAndView("article");
		mv.addObject(article);
		return mv;
	}
}
