package com.cetpa;
import java.util.List;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class ProductDao 
{
	private static SessionFactory factory;
	private static Session session;
	public static Transaction t;
	static
	{
		factory=new Configuration().configure().buildSessionFactory();
		session=factory.openSession();
		t=session.getTransaction();
	}
	public static void saveRecord(Product product)
	{
		t.begin();
		session.save(product);
		t.commit();
	}
	public static Product getProduct(int pid)
	{
		Product p=session.get(Product.class,pid);
		return p;		
	}
	public static void deleteRecord(Product p)
	{
		t.begin();
		session.delete(p);
		t.commit();
	}
	public static List<Product> list(){
		Query<Product>query=session.createQuery("from Product");
		List<Product>list=query.getResultList();
		return list;
	}
	public static void updateRecord(Product product)
	{
		t.begin();
		session.update(product);
		t.commit();
	}
	
}
