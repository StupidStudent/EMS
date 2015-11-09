package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Classroom entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "classroom", schema = "dbo", catalog = "EMS")
public class Classroom implements java.io.Serializable
{

	// Fields

	private String classroomId;

	// Constructors

	/** default constructor */
	public Classroom()
	{
	}

	/** full constructor */
	public Classroom(String classroomId)
	{
		this.classroomId = classroomId;
	}

	// Property accessors
	@Id
	@Column(name = "classroomId", unique = true, nullable = false, length = 10)
	public String getClassroomId()
	{
		return this.classroomId;
	}

	public void setClassroomId(String classroomId)
	{
		this.classroomId = classroomId;
	}

}