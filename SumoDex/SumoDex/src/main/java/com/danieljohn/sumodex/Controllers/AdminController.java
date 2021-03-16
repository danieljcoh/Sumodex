package com.danieljohn.sumodex.Controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.danieljohn.sumodex.Models.SumoWrestler;
import com.danieljohn.sumodex.Services.ChampionService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private ChampionService cService;

	@GetMapping("/login")
	public String adminLogin() {
		return "AdminLogin.jsp";
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute("wrestler") SumoWrestler wrestler, Model viewModel, @RequestParam("shikona") String shikona, 
		RedirectAttributes redirectAttributes, HttpSession session, @PathVariable("id") Long id) {
			viewModel.addAttribute("champion", cService.getById(id));
			String realPasscode = "Tommy";
			if(shikona != realPasscode) {
				return "redirect:/admin/login";
			}
			else {
				return "redirect:/admin/home";
			}
		}
	
	@GetMapping("/home")
	public String adminHome() {
		return "AdminHome.jsp";
	}
}
