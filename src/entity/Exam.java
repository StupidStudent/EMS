package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Exam entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "exam", schema = "dbo", catalog = "EMS")
public class Exam implements java.io.Serializable
{

	// Fields

	private Integer examId;
	private String classroom;
	private String time;
	private String course;
	private String teacher;

	// Constructors

	/** default constructor */
	public Exam()
	{
	}

	/** minimal constructor */
	public Exam(Integer examId)
	{
		this.examId = examId;
	}

	/** full constructor */
	public Exam(Integer examId, String classroom, String time, String course,
			String teacher)
	{
		this.examId = examId;
		this.classroom = classroom;
		this.time = time;
		this.course = course;
		this.teacher = teacher;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "examId", unique = true, nullable = false)
	public Integer getExamId()
	{
		return this.examId;
	}

	public void setExamId(Integer examId)
	{
		this.examId = examId;
	}

	@Column(name = "classroom", length = 10)
	public String getClassroom()
	{
		return this.classroom;
	}

	public void setClassroom(String classroom)
	{
		this.classroom = classroom;
	}

	@Column(name = "time", length = 50)
	public String getTime()
	{
		return this.time;
	}

	public void setTime(String time)
	{
		this.time = time;
	}

	@Column(name = "course", length = 50)
	public String getCourse()
	{
		return this.course;
	}

	public void setCourse(String course)
	{
		this.course = course;
	}

	@Column(name = "teacher", length = 50)
	public String getTeacher()
	{
		return this.teacher;
	}

	public void setTeacher(String teacher)
	{
		this.teacher = teacher;
	}

}