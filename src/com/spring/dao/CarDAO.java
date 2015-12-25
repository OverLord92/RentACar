package com.spring.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class CarDAO {

	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setJdbc(DataSource jdbc){
		
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
		
	}
	
	public CarDAO(){
	}
	
	public List<Car> getCars(){
		
		return jdbc.query("SELECT * FROM cars", new CarRowMapper());
		
	}
	
	public boolean addCar(Car car){
		
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(car);
		
		return (jdbc.update("INSERT INTO cars (manufacturer, model, yearOfProduction, pricePerDay) "
				+ "VALUES (:manufacturer, :model, :yearOfProduction, :pricePerDay)", params)) == 1;
	
		//		:manufacturer, :model, :yearOfProduction, :pricePerDay
		
	}
	
	public boolean deleteCar(int id){
		
		MapSqlParameterSource params = new MapSqlParameterSource("id", id);
		
		return (jdbc.update("DELETE from cars WHERE id=:id", params)) == 1;

	}
	
	public boolean updateCar(int id, int pricePerDay){
		
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		params.addValue("pricePerDay", pricePerDay);
		
		return (jdbc.update("UPDATE cars SET pricePerDay=:pricePerDay WHERE id=:id", params)) == 1;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	public static final class CarRowMapper implements RowMapper<Car> {
		
		@Override
		public Car mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			Car car = new Car();
			car.setId(rs.getInt("id"));
			car.setManufacturer(rs.getString("manufacturer"));
			car.setModel(rs.getString("model"));
			car.setYearOfProduction(rs.getInt("yearOfProduction"));
			car.setPricePerDay(rs.getFloat("pricePerDay"));
			
			return car;
		}
		
	}
	
}
