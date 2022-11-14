package com.jenkins.k8s;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
	@GetMapping("/hello")
	public String sayHello() {		
	   return "Hi from Naveens Maven project- v3";		 
	}

}
