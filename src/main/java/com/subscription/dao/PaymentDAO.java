package com.subscription.dao;

import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import com.subscription.model.Subscription;

public class PaymentDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public void save(Subscription subscription) {
		try {
			String sql = "INSERT INTO Subscription (userID, prodID, prodName, subTypeID, subTypeName, price, subDate, status) "
					+ "VALUES (" + subscription.getUserID() + ", " + subscription.getProdID() + ", '"
					+ subscription.getProdName() + "', " + subscription.getSubTypeID() + ", '"
					+ subscription.getSubTypeName() + "', " + subscription.getPrice() + ", '"
					+ subscription.getSubDate() + "', true)";
			template.update(sql);

		} catch (IncorrectResultSizeDataAccessException e) {
			System.out.println("Erorr");
		}
	}

}
