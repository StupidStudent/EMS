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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


/**
 * Classteam entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="classteam"
    ,catalog="ems"
)

public class ClassTeam  implements java.io.Serializable {


    // Fields    

     private Integer classId;
     private Teacher teacher;
     private Profession profession;
     private String name;
     private Integer grade;
     private Set<Student> students = new HashSet<Student>(0);
     private Set<Syllabus> syllabuses = new HashSet<Syllabus>(0);


    // Constructors

    /** default constructor */
    public ClassTeam() {
    }

    
    /** full constructor */
    public ClassTeam(Teacher teacher, Profession profession, String name, Integer grade, Set<Student> students, Set<Syllabus> syllabuses) {
        this.teacher = teacher;
        this.profession = profession;
        this.name = name;
        this.grade = grade;
        this.students = students;
        this.syllabuses = syllabuses;
    }

   
    // Property accessors
    @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="classId", unique=true, nullable=false)

    public Integer getClassId() {
        return this.classId;
    }
    
    public void setClassId(Integer classId) {
        this.classId = classId;
    }
	@ManyToOne(fetch=FetchType.LAZY)
        @JoinColumn(name="instructor")

    public Teacher getTeacher() {
        return this.teacher;
    }
    
    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }
	@ManyToOne(fetch=FetchType.LAZY)
        @JoinColumn(name="proId")

    public Profession getProfession() {
        return this.profession;
    }
    
    public void setProfession(Profession profession) {
        this.profession = profession;
    }
    
    @Column(name="name", length=50)

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    @Column(name="grade")

    public Integer getGrade() {
        return this.grade;
    }
    
    public void setGrade(Integer grade) {
        this.grade = grade;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="classteam")

    public Set<Student> getStudents() {
        return this.students;
    }
    
    public void setStudents(Set<Student> students) {
        this.students = students;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="classteam")

    public Set<Syllabus> getSyllabuses() {
        return this.syllabuses;
    }
    
    public void setSyllabuses(Set<Syllabus> syllabuses) {
        this.syllabuses = syllabuses;
    }
   








}