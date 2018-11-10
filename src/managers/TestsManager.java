package managers;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.actions.Tests;

public class TestsManager {
	
	
/*
 * to save a test
 */
	public static void createTest(Tests test) {
	
	
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		session.save(test);
		
		transaction.commit();
		session.close();
		
	}
	
	/*
	 * get a test by id to fill the search form in test-invoiceResult page
	 */
	public static List<Tests> getTestById(int id){
		
		Configuration configuration = new Configuration().configure();
		SessionFactory sessionFactory = configuration.buildSessionFactory();		
		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();	
		
		String hql="from Tests where t_id=:id and paid_flag=0";
		Query query = session.createQuery(hql);
		query.setParameter("id",id);
		
		List<Tests> list = query.list();
		transaction.commit();
		return list;
	}
	
	/*
	 * to save and close the transaction between customer and hospital on test results
	 */
	public static boolean pay(int id,int paid_flag){
		
		Configuration configuration = new Configuration().configure();
		SessionFactory sessionFactory = configuration.buildSessionFactory();		
		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();	
		
		String hql="update Tests set issue_flag=:if , paid_flag=:pf where t_id=:id";
		Query query = session.createQuery(hql);
		
		query.setParameter("id",id);
		query.setParameter("if",1);
		query.setParameter("pf",paid_flag);
	
		if(query.executeUpdate()==1) {
			transaction.commit();
			return true ;
		}
		else {
			return false;
		}
		
	}



	/*
	 * get all tests
	 */
	public static List<Tests> getTests(){
		
		Configuration configuration = new Configuration().configure();
		SessionFactory sessionFactory = configuration.buildSessionFactory();		
		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();	
		
		String hql="from Tests where paid_flag=0";
		Query query = session.createQuery(hql);
		List<Tests> list = query.list();

		return list;

		
	}

	
	
}
