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
 * Book entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="book"
    ,catalog="ems"
)

public class Book  implements java.io.Serializable {


    // Fields    

     private Integer bookId;
     private String name;
     private String author;
     private Float price;
     private Integer version;
     private String publish;
     private Set<Course> courses = new HashSet<Course>(0);


    // Constructors

    /** default constructor */
    public Book() {
    }

	/** minimal constructor */
    public Book(String name, String author, Integer version, String publish) {
        this.name = name;
        this.author = author;
        this.version = version;
        this.publish = publish;
    }
    
    /** full constructor */
    public Book(String name, String author, Float price, Integer version, String publish, Set<Course> courses) {
        this.name = name;
        this.author = author;
        this.price = price;
        this.version = version;
        this.publish = publish;
        this.courses = courses;
    }

   
    // Property accessors
    @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="bookId", unique=true, nullable=false)

    public Integer getBookId() {
        return this.bookId;
    }
    
    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }
    
    @Column(name="name", nullable=false, length=50)

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    @Column(name="author", nullable=false, length=50)

    public String getAuthor() {
        return this.author;
    }
    
    public void setAuthor(String author) {
        this.author = author;
    }
    
    @Column(name="price", precision=12, scale=0)

    public Float getPrice() {
        return this.price;
    }
    
    public void setPrice(Float price) {
        this.price = price;
    }
    
    @Column(name="version", nullable=false)

    public Integer getVersion() {
        return this.version;
    }
    
    public void setVersion(Integer version) {
        this.version = version;
    }
    
    @Column(name="publish", nullable=false, length=50)

    public String getPublish() {
        return this.publish;
    }
    
    public void setPublish(String publish) {
        this.publish = publish;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="book")

    public Set<Course> getCourses() {
        return this.courses;
    }
    
    public void setCourses(Set<Course> courses) {
        this.courses = courses;
    }
   








}