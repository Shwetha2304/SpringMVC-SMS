package com.subscription.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.subscription.dao.ProductsDAO;
import com.subscription.dao.SubscriptionDAO;
import com.subscription.dao.SubscriptionTypeDAO;
import com.subscription.dao.UserDAO;
import com.subscription.model.Products;
import com.subscription.model.SubscriptionType;
import com.subscription.model.User;

@Controller
public class UserController {

	@Autowired
	UserDAO userDao;
	// Will inject DAO from XML file

	@Autowired
	SubscriptionDAO subscriptionDAO;

	@Autowired
	SubscriptionTypeDAO subscriptionTypeDAO;

	@Autowired
	ProductsDAO productsDAO;

	// Maps the URL to the LoginPage
	@RequestMapping("/loginPage")
	public String loginPage() {
		return "loginPage";
	}

	// Validation For User Login Page
	@RequestMapping(value = "/loginPage", method = RequestMethod.POST)
	public String loginForm(Model m, @ModelAttribute User user) {

		try {
			if (user.getUserName().equals("admin") && user.getPassword().equals("admin")) {
				return "redirect:/adminDashboard";

			}
			System.out.println("TRY ACTIVE " + user);
			User user1 = userDao.login(user);
			if (user1.equals(null)) {
				m.addAttribute("message", "Invalid Credentials");
				return "loginPage";
			}

			return "redirect:/userDashboard/" + user1.getUserID();

		} catch (NullPointerException e) {
			m.addAttribute("message", "invalid credentials");
			return "loginPage";
		}
	}

	// Maps the URL to the Register Page
	@RequestMapping("/registerPage")
	public String registerPage() {
		return "registerPage";
	}

	// Calls save method
	@RequestMapping(value = "/registerPage", method = RequestMethod.POST)
	public void save(Model m, @ModelAttribute User user) {
		userDao.save(user);
	}

	// UserDashBoard
	// Maps the URL to the UserDashboard
	@RequestMapping("/userDashboard/{id}")
	public String userDashboard(Model m, @PathVariable int id) {
		m.addAttribute("id", id);
		User user = userDao.getUser(id);
		// To display Username in dashboard
		m.addAttribute("name", user.getUserName());
		m.addAttribute("Products", subscriptionDAO.viewSub(id));
		System.err.println(subscriptionDAO.viewSub(id));
		return "userDashboard";
	}

	// AdminDashBoard
	// Maps the URL to the AdminDashboard
	@RequestMapping("/adminDashboard")
	public String adminDashboard(Model m) {
		m.addAttribute("command");
		return "adminDashboard";
	}

	@RequestMapping("/revenue")
	public String adminDashboardRevenue(Model m) {
		List<Products> p = productsDAO.getProducts();
		List<SubscriptionType> s = subscriptionTypeDAO.getSubscriptionTypes();
		List<Integer> countList = new ArrayList<>();
		List<Integer> revenue = new ArrayList<>();
		int total = 0;
		for (Products product : p) {
			int count = subscriptionDAO.countOfCustomers(product.prodName);
			countList.add(count);
		}
		try {
			for (SubscriptionType subscriptionType : s) {
				int re = subscriptionDAO.revenue(subscriptionType.subTypeName);
				// Total Revenue
				total += re;
				revenue.add(re);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		m.addAttribute("Products", p);
		m.addAttribute("Subtype", s);
		m.addAttribute("countList", countList);
		m.addAttribute("revenue", revenue);
		m.addAttribute("total", total);
		System.out.println(countList);
		System.out.println(revenue);
		return "revenue";
	}

	// Unsubscribe
	@RequestMapping("userDashboard/mySubscriptionDetails/deleteSub/{id}/{userid}")
	public String deleteProd(@PathVariable int id, @PathVariable int userid) {
		subscriptionDAO.unSub(id);
		return "redirect:/userDashboard/mySubscriptionDetails/" + userid;
	}

	// Used to SignOut from Dashboard
	@RequestMapping("/userDashboard/loginPage")
	public String signOut(Model m) {
		return "redirect:/loginPage";
	}

	// Used to view User Subscription Details Page
	@RequestMapping("/userDashboard/mySubscriptionDetails/{id}")
	public String mySubDet(Model m, @PathVariable int id) {
		m.addAttribute("id", id);
		m.addAttribute("Products", subscriptionDAO.viewSub(id));
		return "mySubscriptionDetails";
	}

	// Used for Adding Products- AdminDashBoard
	@RequestMapping("/adminProdPage")
	public String adminProdPage(Model m) {
		return "adminProdPage";
	}

	// Used for Adding Subscription Types- AdminDashBoard
	@RequestMapping("/adminSubPage")
	public String adminSubPage(Model m) {
		return "adminSubPage";
	}
}