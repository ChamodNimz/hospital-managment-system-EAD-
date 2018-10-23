package managers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.actions.Ward;

public class WardManager {
	
	public static boolean addWard(Ward ward) {
		
		try {
			
			Configuration configuration = new Configuration().configure();
			
			SessionFactory sessionFactory = configuration.buildSessionFactory();
			
			Session session = sessionFactory.getCurrentSession();

			Transaction transaction = session.beginTransaction();
			
			session.save(ward);
			transaction.commit();
			session.close();
			return true;
			
		} catch (Exception e) {
			e.getMessage();
			return false;
		}
	}
}
