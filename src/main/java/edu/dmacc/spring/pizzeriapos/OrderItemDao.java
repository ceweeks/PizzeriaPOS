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
	
	public List<OrderItem> getAllOrderItems(Order order) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select o from OrderItem o where o.orderId = :orderid";
		TypedQuery<OrderItem> typedQuery = em.createQuery(q, OrderItem.class);
		typedQuery.setParameter("orderid", order.getId());
		List<OrderItem> all = typedQuery.getResultList();
		return all;
	}

}
