package managers;

import java.util.ArrayList;
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
		
		String hql ="select patient_id, p_fname from Patient";
		
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
	
}
