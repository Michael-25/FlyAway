package util;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtil {

	public static final SessionFactory sessionFactory;
	
	static {
		try {
			StandardServiceRegistry standard = new StandardServiceRegistryBuilder()
					.configure("src/main/resources/hibernate.cfg.xml").build();
			
			Metadata metaData = new MetadataSources(standard).getMetadataBuilder().build();
			sessionFactory = metaData.getSessionFactoryBuilder().build();
		}catch (Throwable e) {
			// TODO: handle exception
			throw new ExceptionInInitializerError(e);
		}
	}
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
