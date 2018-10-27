package managers;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.actions.Doctor;
import com.actions.Patient;



public class PatientManager {

	//get patient details with id 
	public static List<Patient> getPatientsById(){
		
		Configuration configuration = new Configuration().configure();
		
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();
		
		String hql ="select patient_id, p_fname from Patient where admit_flag=0 ";
		
		Query query = session.createQuery(hql);
		
		List<Object[]> list = query.list();
		
		List<Patient> patientList = new  ArrayList<Patient>();
		
		for(Object[] o: list) {
			
			Patient patient = new Patient();
			patient.setP_fname((String)o[1]);
			patient.setPatient_id((int)o[0]);
			patientList.add(patient);
		}

		transaction.commit();
		session.close();
		return patientList;
	}
	
	//update admit flag
	public static boolean updateAdmitFlag(int p_id,int flag) {
		
		try {
			
			Configuration configuration = new Configuration().configure();
			
			SessionFactory sessionFactory = configuration.buildSessionFactory();
			
			Session session = sessionFactory.getCurrentSession();

			Transaction transaction = session.beginTransaction();
			
			String hql="update Patient set admit_flag =:flag where patient_id =:p_id";
			Query query = session.createQuery(hql);
			query.setParameter("p_id",p_id);
			query.setParameter("flag",flag);
			query.executeUpdate();
			transaction.commit();
			session.close();
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			return false;
		}
	}
	
	//get patient name and id of admitted ones
		public static List<Patient> getAdmittedPatients(){
			
			Configuration configuration = new Configuration().configure();
			
			SessionFactory sessionFactory = configuration.buildSessionFactory();
			
			Session session = sessionFactory.getCurrentSession();

			Transaction transaction = session.beginTransaction();
			
			String hql ="select patient_id, p_fname from Patient where admit_flag= 1 ";
			
			Query query = session.createQuery(hql);
			
			List<Object[]> list = query.list();
			
			List<Patient> patientList = new  ArrayList<Patient>();
			
			for(Object[] o: list) {
				
				Patient patient = new Patient();
				patient.setP_fname((String)o[1]);
				patient.setPatient_id((int)o[0]);
				patientList.add(patient);
			}

			transaction.commit();
			session.close();
			return patientList;
		}
		
		/*
		 * register patient 
		 * 
		 */
		public static void registerPatient(Patient patient) {
			
			Configuration configuration = new Configuration().configure();
			
			SessionFactory sessionFactory = configuration.buildSessionFactory();
			
			Session session = sessionFactory.getCurrentSession();

			Transaction transaction = session.beginTransaction();
			
			session.save(patient);
			
			transaction.commit();
			session.close();
	
	}

	
}
