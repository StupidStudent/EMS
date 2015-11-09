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
 * Profession entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "profession", schema = "dbo", catalog = "EMS")
public class Profession implements java.io.Serializable
{

	// Fields

	private Integer proId;
	private String name;
	private String introduction;
	private String teachPlan;
	private Set<ClassTeam> classTeams = new HashSet<ClassTeam>(0);

	// Constructors

	/** default constructor */
	public Profession()
	{
	}

	/** minimal constructor */
	public Profession(Integer proId)
	{
		this.proId = proId;
	}

	/** full constructor */
	public Profession(Integer proId, String name, String introduction,
			String teachPlan, Set<ClassTeam> classTeams)
	{
		this.proId = proId;
		this.name = name;
		this.introduction = introduction;
		this.teachPlan = teachPlan;
		this.classTeams = classTeams;
	}

	// Property accessors
	@Id
	@Column(name = "proId", unique = true, nullable = false)
	public Integer getProId()
	{
		return this.proId;
	}

	public void setProId(Integer proId)
	{
		this.proId = proId;
	}

	@Column(name = "name", length = 50)
	public String getName()
	{
		return this.name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	@Column(name = "introduction", length = 500)
	public String getIntroduction()
	{
		return this.introduction;
	}

	public void setIntroduction(String introduction)
	{
		this.introduction = introduction;
	}

	@Column(name = "teachPlan", length = 2000)
	public String getTeachPlan()
	{
		return this.teachPlan;
	}

	public void setTeachPlan(String teachPlan)
	{
		this.teachPlan = teachPlan;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "profession")
	public Set<ClassTeam> getClassTeams()
	{
		return this.classTeams;
	}

	public void setClassTeams(Set<ClassTeam> classTeams)
	{
		this.classTeams = classTeams;
	}

}