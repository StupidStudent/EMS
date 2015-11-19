package entity;

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
 * Student entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="student"
    ,catalog="ems"
)

public class Student  implements java.io.Serializable {


    // Fields    

     private Integer stuId;
     private ClassTeam classteam;
     private Integer userId;
     private String name;
     private Integer age;
     private String address;


    // Constructors

    /** default constructor */
    public Student() {
    }

    
    /** full constructor */
    public Student(ClassTeam classteam, Integer userId, String name, Integer age, String address) {
        this.classteam = classteam;
        this.userId = userId;
        this.name = name;
        this.age = age;
        this.address = address;
    }

   
    // Property accessors
    @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="stuId", unique=true, nullable=false)

    public Integer getStuId() {
        return this.stuId;
    }
    
    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }
	@ManyToOne(fetch=FetchType.LAZY)
        @JoinColumn(name="classId")

    public ClassTeam getClassteam() {
        return this.classteam;
    }
    
    public void setClassteam(ClassTeam classteam) {
        this.classteam = classteam;
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
    
    @Column(name="address", length=200)

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
   








}