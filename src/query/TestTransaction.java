package query;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.springframework.beans.factory.annotation.Autowired;

import daoImpl.BaseDao;

import entity.Student;
import entity.Syllabus;

public class TestTransaction {
	
    @Autowired
    private SessionFactory sessionFactory;
	
	public static void main(String[] args)
	{
		try
		{
			new TestTransaction().testDelete();
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void testDelete() throws Exception{
		Syllabus s = new Syllabus();
		s.setSyllabusId(3);
		  /**Hibernate4取得SessionFactory的方法 */  
        Configuration cfg = new Configuration().configure("");  
        ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(cfg.getProperties()).buildServiceRegistry();  
        sessionFactory = cfg.buildSessionFactory(serviceRegistry);  
        Session session= sessionFactory.getCurrentSession(); //定义Session
        Transaction tx=null;  // 定义事务
        try{
            session=sessionFactory.openSession();  //  通过工厂建立连接
            tx=session.beginTransaction();  //  通过连接开启事务
            session.delete(s);  // 通过连接保存user
            tx.commit();  //  提交
    
        }catch(Exception e){
            tx.rollback();  // 出现异常回滚

        }finally{
            if(session!=null){
                session.close(); // 关闭连接
            }
            if(sessionFactory!=null){
                sessionFactory.close(); // 关闭连接工厂
            }
            }
        }

	
	public void TestInsert() throws Exception{
        Student student = new Student();  //初始化User
        student.setStuId(1);    //设置属性的数据
        student.setName("fsdfsdf");
        student.setAge(12);
        
        Configuration config=new Configuration().configure(); // 加载总配置文件
        SessionFactory sessionFactory= config.buildSessionFactory();   // 建立工厂
        Session session=null; //定义Session
        Transaction tx=null;  // 定义事务
        try{
            session=sessionFactory.openSession();  //  通过工厂建立连接
            tx=session.beginTransaction();  //  通过连接开启事务
            session.save(student);  // 通过连接保存user
            tx.commit();  //  提交
    
        }catch(Exception e){
            tx.rollback();  // 出现异常回滚

        }finally{
            if(session!=null){
                session.close(); // 关闭连接
            }
            if(sessionFactory!=null){
                sessionFactory.close(); // 关闭连接工厂
            }
            }
        }

	public SessionFactory getSessionFactory()
	{
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	
	
}
