package com.spring.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.dao.Car;
import com.spring.dao.CarDAO;

@Controller
public class CarController {
	
	public static final LinkedList<String> manufacturers = 
			new LinkedList<>(Arrays.asList(new String[]{"Volkswagen", "Opel", "Audi", "Mercedes", "BMW"}));
	public static final LinkedList<Integer> productionYears = 
			new LinkedList<>(Arrays.asList(new Integer[]{2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015}));
	
	@Autowired
	private CarDAO carDAO;
	
	
	@RequestMapping("/cars")
	public String goHome(Model model){
			
		List<Car> cars = carDAO.getCars();
				
		model.addAttribute("cars", cars);
		return "cars";
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteCar(Model model, @PathVariable int id){
		System.out.println(id);
		
		carDAO.deleteCar(id);
		
		List<Car> cars = carDAO.getCars();
		
		model.addAttribute("cars", cars);
		return "cars";
	}
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public String goTOAddCar(Model model){
		
		model.addAttribute("car", new Car());
		model.addAttribute("manufacturers", manufacturers);
		model.addAttribute("productionYears", productionYears);
		return "addCar";
	}
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String addCar(@Valid Car car, BindingResult result, Model model){
		
		model.addAttribute("manufacturers", manufacturers);
		model.addAttribute("productionYears", productionYears);
		
		System.out.println(car);
		
		if(result.hasErrors()){
			
			List<ObjectError> allErrors = result.getAllErrors();
			
			for(ObjectError error: allErrors){
				System.out.println(error.getDefaultMessage());
			}
			
			return "addCar"; //////////////////////// nemoj zaboravit vratit ovo
		}
		else {
		

		carDAO.addCar(car);
		return "addCar";
		
		}
	}
	
	@RequestMapping(value = "/search", method=RequestMethod.GET)
	public String search(){
		return "search";
	}
	
	@RequestMapping(value = "/search", method=RequestMethod.POST)
	public String search(HttpServletRequest request, Model model) throws IOException{
		
		
		System.out.println("ajax radi");
		
		String manufacturer = request.getParameter("manufacturer");
		
		System.out.println(manufacturer);
		
		double currentPricePerDay;
		double fromPricePerDay;
		double toPricePerDay;
		
		System.out.println(request.getParameter("toPricePerDay"));
		System.out.println(request.getParameter("fromPricePerDay").equals(""));
		
		if(!(request.getParameter("fromPricePerDay").equals(""))){
		fromPricePerDay = Double.parseDouble(request.getParameter("fromPricePerDay"));
		} else {
			fromPricePerDay = 0;
		}
		
		if(!(request.getParameter("toPricePerDay").equals(""))){
			toPricePerDay = Double.parseDouble(request.getParameter("toPricePerDay"));
		} else {
			toPricePerDay = 0;
		}
		
		
		System.out.println("-------------" + manufacturer + fromPricePerDay + toPricePerDay + "---------------");
		
		
		boolean manufacturerFitts;
		boolean priceFitts;
		
		List<Car> allCars = carDAO.getCars();
		ArrayList<Car> fittingCars = new ArrayList<>();
		
		for(int i = 0; i < allCars.size(); i++){
			
			manufacturerFitts = (allCars.get(i).getManufacturer()).contains(manufacturer);
			
			currentPricePerDay = allCars.get(i).getPricePerDay();
			priceFitts = (currentPricePerDay >= fromPricePerDay)
				&&(currentPricePerDay <= toPricePerDay);
			
			if(manufacturerFitts && priceFitts){
				fittingCars.add(allCars.get(i));
			}
		}
		
		
		model.addAttribute("cars", fittingCars);
			

		System.out.println("ajax radi");
		return "search";
	}
	
	@RequestMapping(value = "/updateCar/{carId}", method = RequestMethod.GET)
	public String updateCar(Model model, HttpServletRequest request, @PathVariable int carId){
		
		int pricePerDay = Integer.parseInt(request.getParameter("newPricePerDay"));
		
		carDAO.updateCar(carId, pricePerDay);
		
		model.addAttribute("cars", carDAO.getCars());
		return "cars";
	}
	

}
