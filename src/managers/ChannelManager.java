package managers;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.actions.Channel;
import com.actions.Doctor;

public class ChannelManager {

	/*
	 * add channel 
	 */
	public static void addChannel(Channel channel) {
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		session.save(channel);
		
		transaction.commit();
		session.close();

	}
	
	public static List<Channel> getChannels() {
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		String hql="from Channel";
		Query query = session.createQuery(hql);
		List<Channel> list = query.list();
		
		transaction.commit();
		session.close();
		
		return list;
	}
	
}
