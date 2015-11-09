package controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Book;
import entity.Syllabus;

import service.SyllabusService;


@Controller
public class SyllabusController
{
	@Resource
	private SyllabusService syllabusService;
	
}
