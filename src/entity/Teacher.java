package entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="teacher"
    ,catalog="ems"
)

public class Teacher  implements java.io.Serializable {


    // Fields    

     private Integer teaId;
     private Integer userId;
     private String name;
     private Integer age;
     private String rank;
     private Set<Syllabus> syllabuses = new HashSet<Syllabus>(0);
     private Set<ClassTeam> classteams = new HashSet<ClassTeam>(0);


    // Constructors

    /** default constructor */
    public Teacher() {
    }

    
    /** full constructor */
    public Teacher(Integer userId, String name, Integer age, String rank, Set<Syllabus> syllabuses, Set<ClassTeam> classteams) {
        this.userId = userId;
        this.name = name;
        this.age = age;
        this.rank = rank;
        this.syllabuses = syllabuses;
        this.classteams = classteams;
    }

   
    // Property accessors
    @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="teaId", unique=true, nullable=false)

    public Integer getTeaId() {
        return this.teaId;
    }
    
    public void setTeaId(Integer teaId) {
        this.teaId = teaId;
    }
    
    @Column(name="userId")

    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    
    @Column(name="name", length=20)

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    @Column(name="age")

    public Integer getAge() {
        return this.age;
    }
    
    public void setAge(Integer age) {
        this.age = age;
    }
    
    @Column(name="rank", length=20)

    public String getRank() {
        return this.rank;
    }
    
    public void setRank(String rank) {
        this.rank = rank;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="teacher")

    public Set<Syllabus> getSyllabuses() {
        return this.syllabuses;
    }
    
    public void setSyllabuses(Set<Syllabus> syllabuses) {
        this.syllabuses = syllabuses;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="teacher")

    public Set<ClassTeam> getClassteams() {
        return this.classteams;
    }
    
    public void setClassteams(Set<ClassTeam> classteams) {
        this.classteams = classteams;
    }
   








}