package com.subscription.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.subscription.dao.PaymentDAO;
import com.subscription.dao.ProductsDAO;
import com.subscription.dao.SubscriptionTypeDAO;
import com.subscription.model.Products;
import com.subscription.model.Subscription;
import com.subscription.model.SubscriptionType;

@Controller
public class PaymentController {

	// Will inject DAO from XML file
	@Autowired
	PaymentDAO paymentDao;
	@Autowired
	ProductsDAO prodDao;
	@Autowired
	SubscriptionTypeDAO subTypeDao;

	@RequestMapping(value = "products/details/products/addToCart/payment/{userid}/{Products}/{subscriptionType}/", method = RequestMethod.GET)
	public String a(Model m, @PathVariable String Products, @PathVariable int userid,
			@PathVariable String subscriptionType) {
		Products prod = prodDao.getProductsByName(Products);
		return "redirect:/payment/" + userid + "/" + Products + "/" + subscriptionType + "/";
	}

	// Used to display Payment Page
	@RequestMapping(value = "payment/{userid}/{Products}/{subscriptionType}/", method = RequestMethod.GET)
	public String a1(Model m, @PathVariable String Products, @PathVariable int userid,
			@PathVariable String subscriptionType) {
		Products prod = prodDao.getProductsByName(Products);
		return "payment";
	}

	@RequestMapping(value = "/payment/{userid}/{Products}/{subscriptionType}/paymentSave", method = RequestMethod.POST)
	public String Payment(Model m, @PathVariable String Products, @PathVariable int userid,
			@PathVariable String subscriptionType) {
		try {
			Products products2 = prodDao.getProductsByName(Products);

			SubscriptionType subscriptionType2 = subTypeDao.getSubTypeByName(subscriptionType);
			LocalDate date = LocalDate.now();
			Subscription subscription = new Subscription(userid, products2.getProdID(), products2.getProdName(),
					subscriptionType2.getSubTypeID(), subscriptionType2.getSubTypeName(),
					products2.getProdMonthlyPrice(), date, true);

			paymentDao.save(subscription);
		} catch (IncorrectResultSizeDataAccessException e) {
			return "redirect:/userDashboard/" + userid;
		}
		return "redirect:/userDashboard/" + userid;
	}
}