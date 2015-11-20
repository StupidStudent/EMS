package controller;

import java.sql.Timestamp;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.ExamService;

import entity.Exam;

@Controller
public class ExamController
{

	@Resource
	private ExamService examService;

	@RequestMapping("examArrange")
	public String examArrange(HttpServletRequest request)
	{
		return "examArrange";
	}

	@RequestMapping("saveExam")
	public String saveExam(HttpServletRequest request)
	{
		Exam exam = new Exam();
		exam.setClassroom(request.getParameter("classroom")); // 把数据set到这个bean里面去
		exam.setCourse(request.getParameter("course"));
		exam.setTeacher(request.getParameter("teacher"));
		exam.setTeacher(request.getParameter("time"));
		examService.save(exam);
		return "examArrange"; // 返回该页面
	}
}
