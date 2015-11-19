package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * User entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="user"
    ,catalog="ems"
)

public class User  implements java.io.Serializable {


    // Fields    

     private Integer userId;
     private String password;
     private String kind;


    // Constructors

    /** default constructor */
    public User() {
    }

    
    /** full constructor */
    public User(String password, String kind) {
        this.password = password;
        this.kind = kind;
    }

   
    // Property accessors
    @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="userId", unique=true, nullable=false)

    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    
    @Column(name="password", length=64)

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    @Column(name="kind", length=4)

    public String getKind() {
        return this.kind;
    }
    
    public void setKind(String kind) {
        this.kind = kind;
    }
   








}