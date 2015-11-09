package entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "teacher", schema = "dbo", catalog = "EMS")
public class Teacher implements java.io.Serializable
{

	// Fields

	private Integer teaId;
	private Account account;
	private String name;
	private Integer age;
	private String rank;
	private Set<Syllabus> syllabuses = new HashSet<Syllabus>(0);
	private Set<ClassTeam> classTeams = new HashSet<ClassTeam>(0);

	// Constructors

	/** default constructor */
	public Teacher()
	{
	}

	/** minimal constructor */
	public Teacher(Integer teaId)
	{
		this.teaId = teaId;
	}

	/** full constructor */
	public Teacher(Integer teaId, Account account, String name, Integer age,
			String rank, Set<Syllabus> syllabuses, Set<ClassTeam> classTeams)
	{
		this.teaId = teaId;
		this.account = account;
		this.name = name;
		this.age = age;
		this.rank = rank;
		this.syllabuses = syllabuses;
		this.classTeams = classTeams;
	}

	// Property accessors
	@Id
	@Column(name = "teaId", unique = true, nullable = false)
	public Integer getTeaId()
	{
		return this.teaId;
	}

	public void setTeaId(Integer teaId)
	{
		this.teaId = teaId;
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

	@Column(name = "rank", length = 20)
	public String getRank()
	{
		return this.rank;
	}

	public void setRank(String rank)
	{
		this.rank = rank;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "teacher")
	public Set<Syllabus> getSyllabuses()
	{
		return this.syllabuses;
	}

	public void setSyllabuses(Set<Syllabus> syllabuses)
	{
		this.syllabuses = syllabuses;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "teacher")
	public Set<ClassTeam> getClassTeams()
	{
		return this.classTeams;
	}

	public void setClassTeams(Set<ClassTeam> classTeams)
	{
		this.classTeams = classTeams;
	}

}