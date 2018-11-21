package edu.dmacc.spring.pizzeriapos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orderitems")
public class OrderItem {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int orderId;
	private String size;
	private String crust;
	private boolean pepperoni;
	private boolean beef;
	private boolean sausage;
	private boolean canadianBacon;
	private boolean pineapple;
	private boolean onions;
	private boolean bellPeppers;
	private boolean jalapenos;
	private boolean blackOlives;
	private boolean mushrooms;
	private double itemCost;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getCrust() {
		return crust;
	}
	public void setCrust(String crust) {
		this.crust = crust;
	}
	public boolean isPepperoni() {
		return pepperoni;
	}
	public void setPepperoni(boolean pepperoni) {
		this.pepperoni = pepperoni;
	}
	public boolean isBeef() {
		return beef;
	}
	public void setBeef(boolean beef) {
		this.beef = beef;
	}
	public boolean isSausage() {
		return sausage;
	}
	public void setSausage(boolean sausage) {
		this.sausage = sausage;
	}
	public boolean isCanadianBacon() {
		return canadianBacon;
	}
	public void setCanadianBacon(boolean canadianBacon) {
		this.canadianBacon = canadianBacon;
	}
	public boolean isPineapple() {
		return pineapple;
	}
	public void setPineapple(boolean pineapple) {
		this.pineapple = pineapple;
	}
	public boolean isOnions() {
		return onions;
	}
	public void setOnions(boolean onions) {
		this.onions = onions;
	}
	public boolean isBellPeppers() {
		return bellPeppers;
	}
	public void setBellPeppers(boolean bellPeppers) {
		this.bellPeppers = bellPeppers;
	}
	public boolean isJalapenos() {
		return jalapenos;
	}
	public void setJalapenos(boolean jalapenos) {
		this.jalapenos = jalapenos;
	}
	public boolean isBlackOlives() {
		return blackOlives;
	}
	public void setBlackOlives(boolean blackOlives) {
		this.blackOlives = blackOlives;
	}
	public boolean isMushrooms() {
		return mushrooms;
	}
	public void setMushrooms(boolean mushrooms) {
		this.mushrooms = mushrooms;
	}
	public double getItemCost() {
		return itemCost;
	}
	public void setItemCost() {
		double cost = 0;
		if(size.equals("S")) {
			cost += 10;
		} else if(size.equals("M")) {
			cost += 13;
		} else if(size.equals("L")) {
			cost += 16;
		} else {
			cost += 19;
		}
	
		if(pepperoni) {
			cost += .5;
		}
		if(beef) {
			cost += .5;
		}
		if(sausage) {
			cost += .5;
		}
		if(canadianBacon) {
			cost += .5;
		}
		if(pineapple) {
			cost += .5;
		}
		if(onions) {
			cost += .5;
		}
		if(bellPeppers) {
			cost += .5;
		}
		if(jalapenos) {
			cost += .5;
		}
		if(blackOlives) {
			cost += .5;
		}
		if(mushrooms) {
			cost += .5;
		}
		this.itemCost = cost;
	}
}
