package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Laboratory entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "laboratory", schema = "dbo", catalog = "EMS")
public class Laboratory implements java.io.Serializable
{

	// Fields

	private String laboratoryId;

	// Constructors

	/** default constructor */
	public Laboratory()
	{
	}

	/** full constructor */
	public Laboratory(String laboratoryId)
	{
		this.laboratoryId = laboratoryId;
	}

	// Property accessors
	@Id
	@Column(name = "laboratoryId", unique = true, nullable = false, length = 10)
	public String getLaboratoryId()
	{
		return this.laboratoryId;
	}

	public void setLaboratoryId(String laboratoryId)
	{
		this.laboratoryId = laboratoryId;
	}

}