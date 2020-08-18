package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoContronller {

	@GetMapping("/")
	public String showHome() {
		return "home";
	}
	
	// Add request mapping for /leaders
	
	@GetMapping("/leaders")
	public String showLeaders() {
		return "leaders";
	}
	
	// Add request mapping for /systems
	
		@GetMapping("/systems")
		public String showSystems() {
			return "systems";
		}
	
}
