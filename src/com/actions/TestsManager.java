package com.actions;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class TestsManager {
	
	

public static void createTest(Tests test) {
	
	
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		session.save(test);
		
		transaction.commit();
		
	}
	
}
