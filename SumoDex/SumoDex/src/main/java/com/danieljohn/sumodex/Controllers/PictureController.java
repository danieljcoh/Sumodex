package com.danieljohn.sumodex.Controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.danieljohn.sumodex.Services.PictureService;
import com.danieljohn.sumodex.Services.SumoWrestlerService;

@Controller
@RequestMapping("/dashboard")
public class PictureController {

	@Autowired
	private SumoWrestlerService swService;
	@Autowired
	private PictureService pService;
	

}
