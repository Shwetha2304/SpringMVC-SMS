package com.subscription.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.subscription.dao.SubscriptionTypeDAO;
import com.subscription.model.SubscriptionType;

@Controller
public class SubscriptionTypeController {

	@Autowired
	SubscriptionTypeDAO subTypeDao;
	// Will inject DAO from XML file

	// Maps the URL to the Subscription Type form
	@RequestMapping("/subTypeForm")
	public String subTypeForm(Model m) {
		m.addAttribute("command", new SubscriptionType());
		return "subTypeForm";
	}

	// Calls save method and redirects to viewSubType
	@RequestMapping(value = "/savesubTypeForm", method = RequestMethod.POST)
	public String save(@ModelAttribute("subType") SubscriptionType subType) {
		subTypeDao.save(subType);
		return "redirect:/viewSubType";
	}

	/* It provides list of users in model object */
	@RequestMapping("/viewSubType")
	public String viewSubType(Model m) {
		// Retrieved list is then added to the model using the attribute name "list"
		List<SubscriptionType> list = subTypeDao.getSubscriptionTypes();
		m.addAttribute("list", list);
		return "viewSubType";
	}

	/*
	 * Displays object data into form id. The @PathVariable puts URL data into
	 * variable.
	 */
	@RequestMapping(value = "/editSubType/{subTypeID}")
	public String edit(@PathVariable int subTypeID, Model m) {
		SubscriptionType subType = subTypeDao.getSubscriptionTypeByID(subTypeID);
		m.addAttribute("command", subType);
		return "subTypeEditForm";
	}

	/* It updates model object. */
	@RequestMapping(value = "/editsavesubType", method = RequestMethod.POST)
	public String editsavesubType(@ModelAttribute("subType") SubscriptionType subType) {
		subTypeDao.update(subType);
		return "redirect:/viewSubType";
	}

	@RequestMapping(value = "/deleteSubType/{subTypeID}", method = RequestMethod.GET)
	public String deleteSubType(@PathVariable int subTypeID) {
		subTypeDao.delete(subTypeID);
		return "redirect:/viewSubType";
	}
}
