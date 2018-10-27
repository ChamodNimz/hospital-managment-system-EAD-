package managers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.actions.Doctor;
import models.PatientRelease;

public class PatientReleaseManager {

	public static void addReleaseDetails(PatientRelease data) {
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		session.save(data);
		
		transaction.commit();
		session.close();
	
	
}

	
}
