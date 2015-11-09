package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Syllabus entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "syllabus", schema = "dbo", catalog = "EMS")
public class Syllabus implements java.io.Serializable
{

	// Fields

	private Integer syllabusId;
	private Course course;
	private Teacher teacher;
	private ClassTeam classTeam;
	private String time;
	private Integer hour;
	private String classroom;

	// Constructors

	/** default constructor */
	public Syllabus()
	{
	}

	/** minimal constructor */
	public Syllabus(Integer syllabusId)
	{
		this.syllabusId = syllabusId;
	}

	/** full constructor */
	public Syllabus(Integer syllabusId, Course course, Teacher teacher,
			ClassTeam classTeam, String time, Integer hour, String classroom)
	{
		this.syllabusId = syllabusId;
		this.course = course;
		this.teacher = teacher;
		this.classTeam = classTeam;
		this.time = time;
		this.hour = hour;
		this.classroom = classroom;
	}

	// Property accessors
	@Id
	@Column(name = "syllabusId", unique = true, nullable = false)
	public Integer getSyllabusId()
	{
		return this.syllabusId;
	}

	public void setSyllabusId(Integer syllabusId)
	{
		this.syllabusId = syllabusId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "courseId")
	public Course getCourse()
	{
		return this.course;
	}

	public void setCourse(Course course)
	{
		this.course = course;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "teaId")
	public Teacher getTeacher()
	{
		return this.teacher;
	}

	public void setTeacher(Teacher teacher)
	{
		this.teacher = teacher;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "classId")
	public ClassTeam getClassTeam()
	{
		return this.classTeam;
	}

	public void setClassTeam(ClassTeam classTeam)
	{
		this.classTeam = classTeam;
	}

	@Column(name = "time")
	public String getTime()
	{
		return this.time;
	}

	public void setTime(String time)
	{
		this.time = time;
	}

	@Column(name = "hour")
	public Integer getHour()
	{
		return this.hour;
	}

	public void setHour(Integer hour)
	{
		this.hour = hour;
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

}