package managers;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

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
	
	public static List<Ward> getWardsWithId(){
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		String hql="select w_id, w_name from Ward";
		Query query = session.createQuery(hql);
		List<Object[]> objectList = query.list();
		
		List<Ward> wardList = new ArrayList<Ward>();
		
		//create Ward list
		for(Object[] obj:objectList) {
			Ward ward = new Ward();
			ward.setW_id((int)obj[0]);
			ward.setW_name((String)obj[1]);
			wardList.add(ward);
		}
		transaction.commit();
		session.close();
		return wardList;
		
	}
	
	//get ward no, available room count and total room count
	public static ArrayList<Integer> getWardAvailability(int w_id){
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		String hql="select room_count, available_rooms, price from Ward where w_id= :id ";
		Query query = session.createQuery(hql);
		query.setParameter("id",w_id);
		List<Object[]> objectList = query.list();
		
		ArrayList<Integer> array = new ArrayList<Integer>();
		
		//create Ward list
		for(Object[] obj:objectList) {

			array.add(Integer.parseInt((String)obj[0]));
			array.add((int)obj[1]);
			array.add(Math.round((float) obj[2]));
		}
		transaction.commit();
		session.close();
		return array;
	}
}
