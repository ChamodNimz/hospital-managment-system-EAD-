package managers;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

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
	
	// get admit details for viewing
	public static List<Admit> getAdmits() {

		Configuration configuration = new Configuration().configure();

		SessionFactory sessionFactory = configuration.buildSessionFactory();

		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();

		String hql = "from Admit";
		Query query = session.createQuery(hql);
		List<Admit> list = query.list();

		transaction.commit();
		session.close();

		return list;
	}
	
	//get patient details for release
	public static ArrayList<String> getPatientDetails(int p_id) {

		Configuration configuration = new Configuration().configure();

		SessionFactory sessionFactory = configuration.buildSessionFactory();

		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();

		String hql = "select reason, admit_date, ward_no from Admit where p_id = :id ";
		Query query = session.createQuery(hql);
		query.setParameter("id", p_id);
		List<Object[]> objectList = query.list();

		ArrayList<String> array = new ArrayList<String>();

		// create Ward list
		for (Object[] obj : objectList) {

			array.add((String) obj[0]);
			array.add((String) obj[1]);
			array.add(Integer.toString((int)obj[2]));
			
		}
		transaction.commit();
		session.close();
		return array;
	}
	
	//update admit table release date 
	public static boolean updateReleaseDate(String date,int p_id) {
		
		try {

			Configuration configuration = new Configuration().configure();

			SessionFactory sessionFactory = configuration.buildSessionFactory();

			Session session = sessionFactory.getCurrentSession();

			Transaction transaction = session.beginTransaction();

			String hql = "update Admit set release_date =:date where p_id =:pid";
			Query query = session.createQuery(hql);
			query.setParameter("date",date);
			query.setParameter("pid", p_id);
			query.executeUpdate();
			transaction.commit();
			session.close();
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			return false;
		}
		
	}
	
}
