package managers;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.actions.Admin;

public class AdminManager {

	public static boolean isValidUser(String un, String ps){
		try {

			Configuration configuration = new Configuration().configure();

			SessionFactory sessionFactory = configuration.buildSessionFactory();

			Session session = sessionFactory.getCurrentSession();

			Transaction transaction = session.beginTransaction();

			String hql = "select username, password from Admin where username =:un and password =:ps ";
			Query query = session.createQuery(hql);
			query.setParameter("un",un);
			query.setParameter("ps", ps);
			List<Admin> admin = query.list();
			if(admin.size()==1) {
				return true;
			}
			else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
