package com.subscription.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.subscription.model.Subscription;

public class SubscriptionDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public List<Subscription> viewSub(int userid) {
		return template.query("SELECT * FROM Subscription WHERE userID = ? AND status = 1", new Object[] { userid },
				new RowMapper<Subscription>() {
					public Subscription mapRow(ResultSet rs, int row) throws SQLException {
						Subscription subscription = new Subscription();
						subscription.setSubID(rs.getInt(1));
						subscription.setUserID(rs.getInt(2));
						subscription.setProdID(rs.getInt(3));
						subscription.setProdName(rs.getString(4));
						subscription.setSubTypeID(rs.getInt(5));
						subscription.setSubTypeName(rs.getString(6));
						subscription.setPrice(rs.getInt(7));
						subscription.setSubDate(rs.getDate(8).toLocalDate());
						subscription.setStatus(rs.getBoolean(9));
						return subscription;
					}
				});
	}

	public int unSub(int subTypeID) {
		String sql = "update subscription set status = 0 where subID=" + subTypeID;
		return template.update(sql);
	}

	public int countOfCustomers(String prodname) {
		String sql = "SELECT COUNT(*) FROM Subscription WHERE prodName ='" + prodname + "'";
		int count = template.queryForObject(sql, Integer.class);
		return count;
	}

	public int revenue(String subtype) {
		try {
			String sql = "SELECT SUM(price) FROM subscription where subTypeName='" + subtype + "' and status=1";
			int revenue = template.queryForObject(sql, Integer.class);
			return revenue;
		} catch (NullPointerException e) {
			return 0;
		}
	}
}