package com.subscription.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.subscription.model.Products;

public class ProductsDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Products prod) {
		String sql = "INSERT INTO Products (prodName, prodMonthlyPrice, prodQuarterlyPrice, prodYearlyPrice) VALUES ('"
				+ prod.getProdName() + "','" + prod.getProdMonthlyPrice() + "','" + prod.getProdQuarterlyPrice() + "','"
				+ prod.getProdYearlyPrice() + "')";
		return template.update(sql);
	}

	public int update(Products prod) {
		String sql = "UPDATE Products SET prodName='" + prod.getProdName() + "', prodMonthlyPrice='"
				+ prod.getProdMonthlyPrice() + "', prodQuarterlyPrice='" + prod.getProdQuarterlyPrice()
				+ "', prodYearlyPrice='" + prod.getProdYearlyPrice() + "' WHERE prodID=" + prod.getProdID();
		return template.update(sql);
	}

	public int delete(int prodID) {
		String sql = "delete from Products where prodID=" + prodID + "";
		return template.update(sql);
	}

	public Products getProductsByID(int prodID) {
		String sql = "select * from Products where prodID=?";
		return template.queryForObject(sql, new Object[] { prodID },
				new BeanPropertyRowMapper<Products>(Products.class));
	}

	public Products getProductsByName(String prodName) {
		String sql = "SELECT * FROM Products WHERE prodName=?";
		return template.queryForObject(sql, new Object[] { prodName }, new BeanPropertyRowMapper<>(Products.class));
	}

	public List<Products> getProducts() {
		return template.query("select * from Products", new RowMapper<Products>() {
			public Products mapRow(ResultSet rs, int row) throws SQLException {
				Products prod = new Products();
				prod.setProdID(rs.getInt(1));
				prod.setProdName(rs.getString(2));
				prod.setProdMonthlyPrice(rs.getInt(3));
				prod.setProdQuarterlyPrice(rs.getInt(4));
				prod.setProdYearlyPrice(rs.getInt(5));
				return prod;
			}
		});
	}
}