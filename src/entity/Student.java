package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "student", schema = "dbo", catalog = "EMS")
public class Student implements java.io.Serializable
{

	// Fields

	private Integer stuId;
	private ClassTeam classTeam;
	private Account account;
	private String name;
	private Integer age;
	private String address;

	// Constructors

	/** default constructor */
	public Student()
	{
	}

	/** minimal constructor */
	public Student(Integer stuId)
	{
		this.stuId = stuId;
	}

	/** full constructor */
	public Student(Integer stuId, ClassTeam classTeam, Account account,
			String name, Integer age, String address)
	{
		this.stuId = stuId;
		this.classTeam = classTeam;
		this.account = account;
		this.name = name;
		this.age = age;
		this.address = address;
	}

	// Property accessors
	@Id
	@Column(name = "stuId", unique = true, nullable = false)
	public Integer getStuId()
	{
		return this.stuId;
	}

	public void setStuId(Integer stuId)
	{
		this.stuId = stuId;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userId")
	public Account getAccount()
	{
		return this.account;
	}

	public void setAccount(Account account)
	{
		this.account = account;
	}

	@Column(name = "name", length = 20)
	public String getName()
	{
		return this.name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	@Column(name = "age")
	public Integer getAge()
	{
		return this.age;
	}

	public void setAge(Integer age)
	{
		this.age = age;
	}

	@Column(name = "address", length = 200)
	public String getAddress()
	{
		return this.address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

}