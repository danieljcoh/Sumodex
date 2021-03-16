package com.danieljohn.sumodex.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.danieljohn.sumodex.Models.Password;
import com.danieljohn.sumodex.Models.SumoWrestler;
import com.danieljohn.sumodex.Services.ChampionService;
import com.danieljohn.sumodex.Services.PasswordService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private ChampionService cService;
	
	@Autowired
	private PasswordService pwService;

	@GetMapping("/login")
	public String adminLogin() {
		return "AdminLogin.jsp";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("idNumber") Long idNumber, @RequestParam("passwordString") String passwordString, Model viewModel) {
		Long chosenIdNumber = idNumber;
		//System.out.println(idNumber);
		//System.out.println(passwordString);
		Long currentPasswordID = chosenIdNumber;
		//System.out.println(chosenIdNumber);
		//Long currentPasswordID = (long) 14;
		String currentPassword = this.pwService.getById(currentPasswordID).getPasswordString();
		if(passwordString != currentPassword) {
			System.out.println("that was the wrong input");
			System.out.println(currentPassword);
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
	
	@GetMapping("/passwordList")
	public String passwordList(Model viewModel) {
		List<Password> allPasswords = this.pwService.getAllPasswords();	
		viewModel.addAttribute("allPasswords", allPasswords);
		return "PasswordList.jsp"; 
	}
	
	@GetMapping("/createNewPassword")
	public String newPassword(@ModelAttribute("password") Password passwordString, Model viewModel) {
		return "NewPassword.jsp";
	}
	
	@PostMapping("/submitNewPassword")
	public String createPassword(@Valid @ModelAttribute("password") Password password, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("errors");
			return "redirect:/admin/createNewPassword";
		}
		this.pwService.create(password);
		return "redirect:/admin/passwordList";
	}
	
	@GetMapping("/password/edit/{id}")
	public String editPassword(@PathVariable("id") Long id, Model viewModel, @ModelAttribute("password") Password password) {
		viewModel.addAttribute("password", pwService.getById(id));
		return "EditPassword.jsp";
	}
	
	@PostMapping("/password/update/{id}")
	public String updatePassword(@ModelAttribute("password") Password passwordString, BindingResult result) {
		if(result.hasErrors()) {
			return "EditPassword.jsp";
		}
		this.pwService.updatePassword(passwordString);
		return "redirect:/admin/passwordList";
	}
	
	@GetMapping("/password/delete/{id}")
	public String deletePassword(@PathVariable("id") Long id) {
		this.pwService.deletePassword(id);;
		return "redirect:/admin/passwordList";
	}
}
