package com.spring.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.dao.User;
import com.spring.dao.UserDAO;

@Controller
public class LoginController {

	@Autowired
	private UserDAO userDAO;

	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}

	@RequestMapping("/goToRegisterForm")
	public String goToRegister(@ModelAttribute User user) {
		return "registerForm";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String createAccount(@Valid User user, BindingResult result) {

		if (result.hasErrors()) {
			return "registerForm";
		}

		user.setEnabled(true);
		user.setAuthority("USER");
		userDAO.addUser(user);
		return "userAccount";

	}

}
