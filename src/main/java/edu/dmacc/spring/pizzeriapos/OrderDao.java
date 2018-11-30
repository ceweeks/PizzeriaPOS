package edu.dmacc.spring.pizzeriapos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class OrderDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("PizzeriaPOS");

	public void insertOrder(Order orderToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(orderToAdd);
		em.getTransaction().commit();
		em.close();
	}
	
	public int getOrderId(Order order) {
		EntityManager em = emfactory.createEntityManager();
		String q = "select o from Order o where o.deliveryCity = :city " + 
		"AND o.deliveryStreet = :street";
		em.getTransaction().begin();
		TypedQuery<Order> typedQuery = em.createQuery(q, Order.class);
		typedQuery.setParameter("city", order.getDeliveryCity());
		typedQuery.setParameter("street",order.getDeliveryStreet());
		List<Order> findOrder = typedQuery.getResultList();
		return findOrder.get(findOrder.size()-1).getId();
	}
	
	public void updateOrderCost(double itemcost, int orderid) {
		EntityManager em = emfactory.createEntityManager();
		Order toUpdate = em.find(Order.class, orderid);
		itemcost += toUpdate.getOrderCost();
		em.getTransaction().begin();
		toUpdate.setOrderCost(itemcost);
		em.getTransaction().commit();
		em.close();
	}
	
	public void updateDeliveryInfo(Order orderWithInfo) {
		EntityManager em = emfactory.createEntityManager();
		Order toUpdate = em.find(Order.class, orderWithInfo.getId());
		em.getTransaction().begin();
		toUpdate.setDeliveryStreet(orderWithInfo.getDeliveryStreet());
		toUpdate.setDeliveryCity(orderWithInfo.getDeliveryCity());
		toUpdate.setDeliveryState(orderWithInfo.getDeliveryState());
		toUpdate.setDeliveryZip(orderWithInfo.getDeliveryZip());
		em.getTransaction().commit();
		em.close();
	}
	
	public List<Order> getAllPendingOrders(Customer custSearch) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select o from Order o where o.customerId = :custid " + 
				"AND o.orderCompletedStatus = :status";
		TypedQuery<Order> typedQuery = em.createQuery(q, Order.class);
		typedQuery.setParameter("custid", custSearch.getId());
		typedQuery.setParameter("status", false);
		List<Order> all = typedQuery.getResultList();
		return all;
	}
	
	public void updateToComplete(Order orderToComplete) {
		EntityManager em = emfactory.createEntityManager();
		Order toUpdate = em.find(Order.class, orderToComplete.getId());
		em.getTransaction().begin();
		toUpdate.setOrderCompletedStatus(true);
		em.getTransaction().commit();
		em.close();
	}
}
