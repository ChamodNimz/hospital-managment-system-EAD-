package managers;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.actions.Doctor;
import com.actions.Ward;

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
	
	public static List<Doctor> getDoctorById(int id) {
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		String hql="from Doctor where doc_id=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id",id);
		List<Doctor> list = query.list();
		
		transaction.commit();
		session.close();
		
		return list;
	}

	public static void updateDoctor(Doctor doctor) {
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		session.update(doctor);
		transaction.commit();
		session.close();
		
		
	}

	public static void removeDoctor(int doc_id) {
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		String hql="delete from Doctor where doc_id=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id",doc_id);
		query.executeUpdate();
		transaction.commit();
		session.close();
	
		
	}
	
	public static List<Doctor> getDoctorWithId(){
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		String hql="select doc_id, doc_name from Doctor";
		Query query = session.createQuery(hql);
		List<Object[]> objectList = query.list();
		
		List<Doctor> docList = new ArrayList<Doctor>();
		
		//create Ward list
		for(Object[] obj:objectList) {
			Doctor doctor = new Doctor();
			doctor.setDoc_id((int)obj[0]);
			doctor.setDoc_name((String)obj[1]);
			docList.add(doctor);
			
		}
		transaction.commit();
		session.close();
		return docList;
	}
}
