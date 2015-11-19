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
 * Course entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="course"
    ,catalog="ems"
)

public class Course  implements java.io.Serializable {


    // Fields    

     private Integer courseId;
     private Book book;
     private String name;
     private String instruction;
     private String teachPlan;
     private Integer credit;
     private Set<Syllabus> syllabuses = new HashSet<Syllabus>(0);


    // Constructors

    /** default constructor */
    public Course() {
    }

    
    /** full constructor */
    public Course(Book book, String name, String instruction, String teachPlan, Integer credit, Set<Syllabus> syllabuses) {
        this.book = book;
        this.name = name;
        this.instruction = instruction;
        this.teachPlan = teachPlan;
        this.credit = credit;
        this.syllabuses = syllabuses;
    }

   
    // Property accessors
    @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="courseId", unique=true, nullable=false)

    public Integer getCourseId() {
        return this.courseId;
    }
    
    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }
	@ManyToOne(fetch=FetchType.LAZY)
        @JoinColumn(name="bookId")

    public Book getBook() {
        return this.book;
    }
    
    public void setBook(Book book) {
        this.book = book;
    }
    
    @Column(name="name", length=50)

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    @Column(name="instruction", length=200)

    public String getInstruction() {
        return this.instruction;
    }
    
    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }
    
    @Column(name="teachPlan", length=1000)

    public String getTeachPlan() {
        return this.teachPlan;
    }
    
    public void setTeachPlan(String teachPlan) {
        this.teachPlan = teachPlan;
    }
    
    @Column(name="credit")

    public Integer getCredit() {
        return this.credit;
    }
    
    public void setCredit(Integer credit) {
        this.credit = credit;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="course")

    public Set<Syllabus> getSyllabuses() {
        return this.syllabuses;
    }
    
    public void setSyllabuses(Set<Syllabus> syllabuses) {
        this.syllabuses = syllabuses;
    }
   








}