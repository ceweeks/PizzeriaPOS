package edu.dmacc.spring.pizzeriapos;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@Autowired CustomerDao cdao;
	
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
		cdao.insertCustomer(customer);
		modelAndView.setViewName("customerResult");
		modelAndView.addObject("c", customer);
		return modelAndView;
	}
	
	@RequestMapping(value = "/viewCustomer")
	public ModelAndView viewAllCustomers() {
		ModelAndView modelAndView = new ModelAndView();
		List<Customer> allCustomers = cdao.getAllCustomers();
		modelAndView.setViewName("viewCustomer");
		modelAndView.addObject("all", allCustomers);
		return modelAndView;
	}
	
	@Bean
	public CustomerDao cDao() {
		CustomerDao cdao = new CustomerDao();
		return cdao;
	}
}
