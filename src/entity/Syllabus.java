package entity;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * Syllabus entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="syllabus"
    ,catalog="ems"
)

public class Syllabus  implements java.io.Serializable {
    // Fields    
     private Integer syllabusId;
     private Course course;
     private Teacher teacher;
     private ClassTeam classteam;
     private Profession profession;
     private Timestamp time;
     private Integer hour;
     private String classroom;
     private String year;
     private String term;


    // Constructors

    /** default constructor */
    public Syllabus() {
    }

    
    /** full constructor */
    public Syllabus(Course course, Teacher teacher, ClassTeam classteam, Profession profession, Timestamp time, Integer hour, String classroom, String year, String term) {
        this.course = course;
        this.teacher = teacher;
        this.classteam = classteam;
        this.profession = profession;
        this.time = time;
        this.hour = hour;
        this.classroom = classroom;
        this.year = year;
        this.term = term;
    }

   
    // Property accessors
    @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="syllabusId", unique=true, nullable=false)

    public Integer getSyllabusId() {
        return this.syllabusId;
    }
    
    public void setSyllabusId(Integer syllabusId) {
        this.syllabusId = syllabusId;
    }
	@ManyToOne(fetch=FetchType.LAZY)
        @JoinColumn(name="courseId")

    public Course getCourse() {
        return this.course;
    }
    
    public void setCourse(Course course) {
        this.course = course;
    }
	@ManyToOne(fetch=FetchType.LAZY)
        @JoinColumn(name="teaId")

    public Teacher getTeacher() {
        return this.teacher;
    }
    
    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }
	@ManyToOne(fetch=FetchType.LAZY)
        @JoinColumn(name="classId")

    public ClassTeam getClassteam() {
        return this.classteam;
    }
    
    public void setClassteam(ClassTeam classteam) {
        this.classteam = classteam;
    }
	@ManyToOne(fetch=FetchType.LAZY)
        @JoinColumn(name="proId")

    public Profession getProfession() {
        return this.profession;
    }
    
    public void setProfession(Profession profession) {
        this.profession = profession;
    }
    
    @Column(name="time", length=19)

    public Timestamp getTime() {
        return this.time;
    }
    
    public void setTime(Timestamp time) {
        this.time = time;
    }
    
    @Column(name="hour")

    public Integer getHour() {
        return this.hour;
    }
    
    public void setHour(Integer hour) {
        this.hour = hour;
    }
    
    @Column(name="classroom", length=10)

    public String getClassroom() {
        return this.classroom;
    }
    
    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }
    
    @Column(name="year", length=8)

    public String getYear() {
        return this.year;
    }
    
    public void setYear(String year) {
        this.year = year;
    }
    
    @Column(name="term", length=8)

    public String getTerm() {
        return this.term;
    }
    
    public void setTerm(String term) {
        this.term = term;
    }
   








}