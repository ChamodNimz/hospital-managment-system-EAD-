package managers;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.actions.Doctor;

public class DoctorManager {

	public static void addDoctor(Doctor doctor) {
		
			Configuration configuration = new Configuration().configure();
			
			SessionFactory sessionFactory = configuration.buildSessionFactory();
			
			Session session = sessionFactory.getCurrentSession();

			Transaction transaction = session.beginTransaction();
			
			session.save(doctor);
			
			transaction.commit();
			session.close();
			
			
		
	}

	public static List<Doctor> getDoctors() {
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		String hql="from Doctor";
		Query query = session.createQuery(hql);
		List<Doctor> list = query.list();
		
		transaction.commit();
		session.close();
		
		return list;
	}
}
