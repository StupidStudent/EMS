package entity;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import org.springframework.core.annotation.Order;


/**
 * Profession entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="profession"
    ,catalog="ems"
)

public class Profession  implements java.io.Serializable {


    // Fields    

     private Integer proId;
     private String name;
     private String introduction;
     private String teachPlan;
     private Set<ClassTeam> classteams = new HashSet<ClassTeam>(0);
     private Set<Syllabus> syllabuses = new HashSet<Syllabus>(0);


    // Constructors

    /** default constructor */
    public Profession() {
    }

    
    /** full constructor */
    public Profession(String name, String introduction, String teachPlan, Set<ClassTeam> classteams, Set<Syllabus> syllabuses) {
        this.name = name;
        this.introduction = introduction;
        this.teachPlan = teachPlan;
        this.classteams = classteams;
        this.syllabuses = syllabuses;
    }

   
    // Property accessors
    @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="proId", unique=true, nullable=false)

    public Integer getProId() {
        return this.proId;
    }
    
    public void setProId(Integer proId) {
        this.proId = proId;
    }
    
    @Column(name="name", length=50)

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    @Column(name="introduction", length=500)

    public String getIntroduction() {
        return this.introduction;
    }
    
    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }
    
    @Column(name="teachPlan", length=2000)

    public String getTeachPlan() {
        return this.teachPlan;
    }
    
    public void setTeachPlan(String teachPlan) {
        this.teachPlan = teachPlan;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="profession")

    public Set<ClassTeam> getClassteams() {
        return this.classteams;
    }
    
    public void setClassteams(Set<ClassTeam> classteams) {
        this.classteams = classteams;
    }

    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="profession")
    @OrderBy(value="year,term")
    public Set<Syllabus> getSyllabuses() {
        return this.syllabuses;
    }
    
    public void setSyllabuses(Set<Syllabus> syllabuses) {
        this.syllabuses = syllabuses;
    }
   








}