package com.danieljohn.sumodex.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.danieljohn.sumodex.Services.SumoWrestlerService;

@Controller
public class SumoDexController {

	
	@Autowired
	private SumoWrestlerService swService;
	
	@GetMapping("")
	public String home() {
		return "Sumodex.jsp";
	}
	
}
