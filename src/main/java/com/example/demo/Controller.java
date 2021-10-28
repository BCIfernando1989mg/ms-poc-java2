package com.example.demo;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

	@CrossOrigin
    @RequestMapping(method = RequestMethod.GET, value = "/search")
	public String greeting() {
		return "hello world";
	}

}
