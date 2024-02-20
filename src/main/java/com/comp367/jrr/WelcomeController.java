package com.comp367.jrr;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WelcomeController {
	@GetMapping("/message")	
	public String returnMessage() 
	{
			return "Welcome to COMP367";
			
	}

}
