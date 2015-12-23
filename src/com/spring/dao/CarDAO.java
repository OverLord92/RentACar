package com.spring.dao;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class CarDAO {

	private JdbcTemplate jdbc;
	
	@Autowired
	public void setJdbc(DataSource jdbc){
		this.jdbc = new JdbcTemplate(jdbc);
	}
	
	public CarDAO(){
		System.out.println("carDAO pozvan");
	}
	
}
