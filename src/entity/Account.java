package entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Account entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "account", schema = "dbo", catalog = "EMS")
public class Account implements java.io.Serializable
{

	// Fields

	private Integer userId;
	private String password;
	private String kind;
	private Set<Student> students = new HashSet<Student>(0);
	private Set<Teacher> teachers = new HashSet<Teacher>(0);

	// Constructors

	/** default constructor */
	public Account()
	{
	}

	/** minimal constructor */
	public Account(Integer userId)
	{
		this.userId = userId;
	}

	/** full constructor */
	public Account(Integer userId, String password, String kind,
			Set<Student> students, Set<Teacher> teachers)
	{
		this.userId = userId;
		this.password = password;
		this.kind = kind;
		this.students = students;
		this.teachers = teachers;
	}

	// Property accessors
	@Id
	@Column(name = "userId", unique = true, nullable = false)
	public Integer getUserId()
	{
		return this.userId;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

	@Column(name = "password", length = 64)
	public String getPassword()
	{
		return this.password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	@Column(name = "kind", length = 4)
	public String getKind()
	{
		return this.kind;
	}

	public void setKind(String kind)
	{
		this.kind = kind;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "account")
	public Set<Student> getStudents()
	{
		return this.students;
	}

	public void setStudents(Set<Student> students)
	{
		this.students = students;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "account")
	public Set<Teacher> getTeachers()
	{
		return this.teachers;
	}

	public void setTeachers(Set<Teacher> teachers)
	{
		this.teachers = teachers;
	}

}