package managers;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.actions.Patient;



public class PatientManager {

	//get patient details by id 
	public static List<Patient> getPatientsById(){
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		String hql ="from Patient";
		Query query = session.createQuery(hql);
		
		List<Patient> list =(List<Patient>) query.list();

		transaction.commit();
		
		return list;
	}
}
