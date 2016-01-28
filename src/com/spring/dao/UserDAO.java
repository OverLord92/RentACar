package com.spring.dao;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserDAO {

	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setJdbc(DataSource jdbc){
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);	
	}
	
	@Transactional
	public boolean addUser(User user){
		
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(user);
		
		jdbc.update("INSERT INTO users (username, password, email, enabled) "
				+ "VALUES (:username, :password, :email, :enabled)", params);
		
		return (jdbc.update("INSERT INTO authorities (username, authority) "
				+ "VALUES (:username, :authority)", params)) == 1;
	
		
	}
	

}
