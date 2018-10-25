package managers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.actions.Admit;

public class AdmitManager {

	public static boolean admitPatient(Admit admit) {
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		session.save(admit);
		transaction.commit();
		session.close();
		
		return true;
	}
	
}
