package controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Book;
import entity.Course;
import entity.Syllabus;

import service.BookService;
import service.CourseService;
import service.SyllabusService;

@Controller
public class BookController
{
	@Resource
	private BookService bookService;
	
	@Resource
	private SyllabusService syllabusService;
	
	@Resource
	private CourseService courseService;
	
	@RequestMapping("getBookList")
	public ModelAndView getBookList(HttpServletRequest request)
	{
		int classId = Integer.valueOf(request.getParameter("classId"));
		List<Syllabus> syllabuses = syllabusService.getSyllabusesByClassId(classId);
		List<Book> books = new ArrayList<Book>();
		for(Syllabus syllabus : syllabuses )
		{
			books.add(syllabus.getCourse().getBook());
		}
		
		request.setAttribute("classId", classId);
		ModelAndView mv = new ModelAndView("bookManage2");
		mv.addObject("books", books);
		return mv;
	}
	
	
	@RequestMapping("addBook")
	public ModelAndView addBook(HttpServletRequest request)
	{
		int classId = Integer.valueOf(request.getParameter("classId"));
		List<Syllabus> syllabuses = syllabusService.getSyllabusesByClassId(classId);
		List<Course> courses= new ArrayList<Course>();
		for(Syllabus syllabus : syllabuses )
		{
			courses.add(syllabus.getCourse());
		}
		
		request.setAttribute("classId", classId);
		ModelAndView mv = new ModelAndView("addBook");
		mv.addObject("courses", courses);
		return mv;
	}
	
	@RequestMapping("saveBook")
	public ModelAndView saveBook(HttpServletRequest request)
	{
		int courseId = Integer.valueOf(request.getParameter("courseId"));
		Course course = courseService.get(courseId);
		Book book = new Book();
		book.setAuthor(request.getParameter("author"));
		book.setName(request.getParameter("name"));
		book.setPrice(Double.valueOf(request.getParameter("price")));
		book.setPublish(request.getParameter("publish"));
		book.setVersion(Integer.valueOf(request.getParameter("version")));
		course.setBook(book);		//规定哪门课程需要该书
		bookService.save(book);
		courseService.update(course); 
		return this.getBookList(request);
	}

}
