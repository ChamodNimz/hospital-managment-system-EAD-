package managers;

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
	
}
