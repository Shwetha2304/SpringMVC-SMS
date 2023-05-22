package com.subscription.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.subscription.dao.ProductsDAO;
import com.subscription.dao.SubscriptionDAO;
import com.subscription.dao.SubscriptionTypeDAO;
import com.subscription.model.Products;
import com.subscription.model.Subscription;

@Controller
public class ProductsController {

	// Will inject DAO from XML file
	@Autowired
	ProductsDAO prodDao;

	@Autowired
	SubscriptionDAO subDAO;

	@Autowired
	SubscriptionTypeDAO subTypeDAO;

	// Used to Display PLP
	@RequestMapping("/userDashboard/prodListPage/{id}")
	public String PDP(Model m, @PathVariable int id) {
		try {
			// The retrieved list of products is added to model
			m.addAttribute("Products", prodDao.getProducts());
			m.addAttribute("id", id);
			List<Subscription> subscription = subDAO.viewSub(id);

		} catch (IncorrectResultSizeDataAccessException e) {
			return "/prodListPage";
		}
		return "/prodListPage";
	}

	// Used to Display PDP
	@RequestMapping("/products/details/{userID}")
	public String PLP(Model m, @RequestParam String prodName, @PathVariable int userID) {
		prodDao.getProductsByName(prodName);
		m.addAttribute("Products", prodDao.getProductsByName(prodName));
		m.addAttribute("Subtype", subTypeDAO.getSubscriptionTypes());
		m.addAttribute("userid", userID);
		return "prodDetails";
	}

	// Used to display Add to Cart Page
	@RequestMapping("products/details/products/addToCart/{userid}")
	public String PDP(Model m, @RequestParam String prodName, @RequestParam String subscriptionType,
			@RequestParam int price, @PathVariable int userid) {
		m.addAttribute("Products", prodName);
		m.addAttribute("price", price);
		m.addAttribute("subscriptionType", subscriptionType);
		m.addAttribute("userid", userid);
		return "addToCart";
	}

	// Products from Admin
	@RequestMapping("/prodForm")
	public String showform1(Model m) {
		m.addAttribute("command", new Products());
		return "prodForm";
	}

	@RequestMapping(value = "/saveprodForm", method = RequestMethod.POST)
	public String save(@ModelAttribute("prod") Products prod) {
		prodDao.save(prod);
		return "redirect:/viewProd";
	}

	/* It provides list of users in model object */
	@RequestMapping("/viewProd")
	public String viewSubType(Model m) {
		List<Products> list = prodDao.getProducts();
		m.addAttribute("list", list);
		return "viewProd";
	}

	/*
	 * It displays object data into form for the given id. The @PathVariable puts
	 * URL data into variable.
	 */
	@RequestMapping(value = "/editProd/{prodID}")
	public String edit(@PathVariable int prodID, Model m) {
		Products prod = prodDao.getProductsByID(prodID);
		m.addAttribute("command", prod);
		return "prodEditForm";
	}

	/* It updates model object. */
	@RequestMapping(value = "/editsaveProd", method = RequestMethod.POST)
	public String editsaveProd(@ModelAttribute("prod") Products prod) {
		prodDao.update(prod);
		return "redirect:/viewProd";
	}

	@RequestMapping(value = "/deleteProd/{prodID}", method = RequestMethod.GET)
	public String deleteProd(@PathVariable int prodID) {
		prodDao.delete(prodID);
		return "redirect:/viewProd";
	}
}