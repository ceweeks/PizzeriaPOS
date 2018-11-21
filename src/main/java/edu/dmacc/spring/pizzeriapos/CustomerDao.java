package edu.dmacc.spring.pizzeriapos;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class CustomerDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("PizzeriaPOS");

	public void insertCustomer(Customer customerToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(customerToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Customer> getAllCustomers() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select c from Customer c";
		TypedQuery<Customer> typedQuery = em.createQuery(q, Customer.class);
		List<Customer> all = typedQuery.getResultList();
		return all;
	}
	
	public int getCustomerId(Customer cust) {
		EntityManager em = emfactory.createEntityManager();
		String q = "select c from Customer c where c.phoneId = :phoneid " + 
		"and c.fName = :fname and c.lName = :lname";
		em.getTransaction().begin();
		TypedQuery<Customer> typedQuery = em.createQuery(q, Customer.class);
		typedQuery.setParameter("phoneid", cust.getPhoneId());
		typedQuery.setParameter("fname",cust.getfName());
		typedQuery.setParameter("lname", cust.getlName());
		List<Customer> customers = typedQuery.getResultList();
		return customers.get(0).getId();
	}
}
