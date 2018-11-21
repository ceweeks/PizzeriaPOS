package edu.dmacc.spring.pizzeriapos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class OrderItemDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("PizzeriaPOS");

	public void insertOrderItem(OrderItem orderItemToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(orderItemToAdd);
		em.getTransaction().commit();
		em.close();
	}

}
