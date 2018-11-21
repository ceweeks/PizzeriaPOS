package edu.dmacc.spring.pizzeriapos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Order {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int customerId;
	private String deliveryStreet;
	private String deliveryCity;
	private String deliveryState;
	private int deliveryZip;
	private double orderCost;
	private boolean orderCompletedStatus;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getDeliveryStreet() {
		return deliveryStreet;
	}
	public void setDeliveryStreet(String deliveryStreet) {
		this.deliveryStreet = deliveryStreet;
	}
	public String getDeliveryCity() {
		return deliveryCity;
	}
	public void setDeliveryCity(String deliveryCity) {
		this.deliveryCity = deliveryCity;
	}
	public String getDeliveryState() {
		return deliveryState;
	}
	public void setDeliveryState(String deliveryState) {
		this.deliveryState = deliveryState;
	}
	public int getDeliveryZip() {
		return deliveryZip;
	}
	public void setDeliveryZip(int deliveryZip) {
		this.deliveryZip = deliveryZip;
	}
	public double getOrderCost() {
		return orderCost;
	}
	public void setOrderCost(double orderCost) {
		this.orderCost = orderCost;
	}
	public boolean isOrderCompletedStatus() {
		return orderCompletedStatus;
	}
	public void setOrderCompletedStatus(boolean orderCompletedStatus) {
		this.orderCompletedStatus = orderCompletedStatus;
	}
	
	
	
}
