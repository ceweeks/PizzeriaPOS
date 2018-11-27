package edu.dmacc.spring.pizzeriapos;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@Autowired CustomerDao customerDao;
	@Autowired OrderDao orderDao;
	@Autowired OrderItemDao orderItemDao;
	
	private static final String[] sizes = {"S", "M", "L", "X"};
	private static final String[] crusts = {"T", "P"};
	
	@RequestMapping(value = "/customerSearch")
	public ModelAndView searchCustomerPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("homeSearch");
		modelAndView.addObject("customer", new Customer());
		return modelAndView;
	}
	
	@RequestMapping(value = "/searchForCustomer")
	public ModelAndView reviewCustomerSearch(Customer cust) {
		ModelAndView modelAndView = new ModelAndView();
		List<Customer> allCustomers = customerDao.getAllCustomersSearch(cust);
		modelAndView.setViewName("customerSearchResult");
		modelAndView.addObject("allcustomers", allCustomers);
		return modelAndView;
	}
	
	@RequestMapping(value = "/form")
	public ModelAndView customer() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("customerForm");
		modelAndView.addObject("customer", new Customer());
		return modelAndView;
	}

	@RequestMapping(value = "/result")
	public ModelAndView processCustomer(Customer customer) {
		ModelAndView modelAndView = new ModelAndView();
		customerDao.insertCustomer(customer);
		int custid = customerDao.getCustomerId(customer);
		modelAndView.setViewName("customerResult");
		modelAndView.addObject("c", customer);
		modelAndView.addObject("custId", custid);
		return modelAndView;
	}
	
	@RequestMapping(value = "/sendToResult")
	public ModelAndView haveCustomerSendToResult(Customer cust) {
		ModelAndView modelAndView = new ModelAndView();
		Customer custToSend = customerDao.retrieveCustomerById(cust.getId());
		modelAndView.addObject("c", custToSend);
		modelAndView.addObject("custId", custToSend.getId());
		modelAndView.setViewName("customerResult");
		return modelAndView;
	}
	
	@RequestMapping(value = "/identifiedCustomerNextStep", params="startOrder", method=RequestMethod.POST)
	public ModelAndView startOrder(Customer custToPlaceOrder) {
		Order orderToAdd = new Order();
		orderToAdd.setCustomerId(custToPlaceOrder.getId());
		orderToAdd.setDeliveryCity("DummyData");
		orderToAdd.setDeliveryState("IA");
		orderToAdd.setDeliveryStreet("DummyData");
		orderToAdd.setDeliveryZip(55555);
		orderToAdd.setOrderCompletedStatus(false);
		orderToAdd.setOrderCost(0);
		orderDao.insertOrder(orderToAdd);
		int orderid = orderDao.getOrderId(orderToAdd);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("orderItemForm");
		modelAndView.addObject("orderitem", new OrderItem());
		modelAndView.addObject("orderid", orderid);
		modelAndView.addObject("sizes", sizes);
		modelAndView.addObject("crusts", crusts);
		return modelAndView;
	}
	
	@RequestMapping(value = "/identifiedCustomerNextStep", params="checkoutCustomer", method=RequestMethod.POST)
	public ModelAndView checkoutCustomer(Customer custToCheckout) {
		//TODO for Antonio
		return null;
	}
	
	@RequestMapping(value = "/createdOrderItem", params="additionalOrderItem", method=RequestMethod.POST)
	public ModelAndView processAndAddAnotherOrderItem(OrderItem orderItem) {
		orderItem.setItemCost();
		int orderid = orderItem.getOrderId();
		orderDao.updateOrderCost(orderItem.getItemCost(), orderid);
		orderItemDao.insertOrderItem(orderItem);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("orderItemForm");
		modelAndView.addObject("orderitem", new OrderItem());
		modelAndView.addObject("orderid", orderid);
		modelAndView.addObject("sizes", sizes);
		modelAndView.addObject("crusts", crusts);
		return modelAndView;
	}
	
	@RequestMapping(value = "/createdOrderItem", params="finishOrder", method=RequestMethod.POST)
	public ModelAndView finishOrder(OrderItem orderItem) {
		orderItem.setItemCost();
		int orderid = orderItem.getOrderId();
		orderDao.updateOrderCost(orderItem.getItemCost(), orderid);
		orderItemDao.insertOrderItem(orderItem);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("finishOrderForm");
		modelAndView.addObject("order", new Order());
		modelAndView.addObject("orderid", orderid);
		return modelAndView;
	}
	
	@RequestMapping(value = "/finalizeOrder")
	public ModelAndView processOrder(Order orderWithInfo) {
		orderDao.updateDeliveryInfo(orderWithInfo);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("homeSearch");
		modelAndView.addObject("customer", new Customer());
		return modelAndView;
	}
	
	@Bean
	public CustomerDao customerDao() {
		CustomerDao bean = new CustomerDao();
		return bean;
	}
	
	@Bean
	public OrderDao orderDao() {
		OrderDao bean = new OrderDao();
		return bean;
	}
	
	@Bean
	public OrderItemDao orderItemDao() {
		OrderItemDao bean = new OrderItemDao();
		return bean;
	}
}
