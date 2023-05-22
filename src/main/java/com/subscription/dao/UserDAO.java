package com.subscription.dao;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.subscription.model.User;

public class UserDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(User user) {
		String sql = "INSERT INTO User (userName, password, confPass, userEmail, userPhno,userRole) VALUES ('"
				+ user.getUserName() + "','" + user.getPassword() + "','" + user.getConfPass() + "','"
				+ user.getUserEmail() + "','" + user.getUserPhno() + "','USER')";
		return template.update(sql);
	}

	public User login(User user) {

		try {
			String sql = "SELECT * FROM User WHERE userName = ? and password = ?;";
			User u1 = template.queryForObject(sql, new Object[] { user.getUserName(), user.getPassword() },
					new BeanPropertyRowMapper<User>(User.class));
			return u1;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	// Used for displaying username, in dashboard
	public User getUser(int id) {
		String sql = "SELECT * FROM User WHERE userID = ?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<>(User.class));
	}
}