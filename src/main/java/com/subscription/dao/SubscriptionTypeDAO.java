package com.subscription.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.subscription.model.SubscriptionType;

public class SubscriptionTypeDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(SubscriptionType subType) {
		String sql = "INSERT INTO SubscriptionType (subTypeName) VALUES ('" + subType.getSubTypeName() + "');";
		return template.update(sql);
	}

	public int update(SubscriptionType subType) {
		String sql = "UPDATE SubscriptionType SET subTypeName='" + subType.getSubTypeName() + "' WHERE subTypeID="
				+ subType.getSubTypeID();
		return template.update(sql);
	}

	public int delete(int subTypeID) {
		String sql = "delete from SubscriptionType where subTypeID=" + subTypeID + "";
		return template.update(sql);
	}

	public SubscriptionType getSubscriptionTypeByID(int subTypeID) {
		String sql = "select * from SubscriptionType where subTypeID=?";
		return template.queryForObject(sql, new Object[] { subTypeID },
				new BeanPropertyRowMapper<SubscriptionType>(SubscriptionType.class));
	}

	public List<SubscriptionType> getSubscriptionTypes() {
		return template.query("select * from SubscriptionType", new RowMapper<SubscriptionType>() {
			public SubscriptionType mapRow(ResultSet rs, int row) throws SQLException {
				SubscriptionType subType = new SubscriptionType();
				subType.setSubTypeID(rs.getInt(1));
				subType.setSubTypeName(rs.getString(2));
				return subType;
			}
		});
	}

	public SubscriptionType getSubTypeByName(String subTypeName) {
		String sql = "SELECT * FROM SubscriptionType WHERE subTypeName = ?";
		return template.queryForObject(sql, new Object[] { subTypeName },
				new BeanPropertyRowMapper<SubscriptionType>(SubscriptionType.class));
	}
}