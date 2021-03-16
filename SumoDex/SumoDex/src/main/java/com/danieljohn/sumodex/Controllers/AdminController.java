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

import com.danieljohn.sumodex.Models.Passcode;
import com.danieljohn.sumodex.Models.SumoWrestler;
import com.danieljohn.sumodex.Services.ChampionService;
import com.danieljohn.sumodex.Services.PasscodeService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private ChampionService cService;
	
	@Autowired
	private PasscodeService pcService;

	@GetMapping("/login")
	public String adminLogin() {
		return "AdminLogin.jsp";
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute("wrestler") SumoWrestler wrestler, Model viewModel, @RequestParam("shikona") String shikona, 
		RedirectAttributes redirectAttributes, HttpSession session) {
			String realPasscode = "Tommy";
			System.out.println(shikona);
			if(shikona != "Tommy") {
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
	
	@GetMapping("/passcodeList")
	public String passcodeList(Model viewModel) {
		List<Passcode> allPasscodes = this.pcService.getAllPasscodes();	
		viewModel.addAttribute("allPasscodes", allPasscodes);
		return "PasscodeList.jsp";
	}
	
	@GetMapping("/createNewPasscode")
	public String newPasscode(@ModelAttribute("passcode") Passcode passcode, Model viewModel) {
		return "NewPasscode.jsp";
	}
	
	@PostMapping("/submitNewPasscode")
	public String create(@Valid @ModelAttribute("passcode") Passcode passcode, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("errors");
			return "redirect:/createNewPasscode";
		}
		this.pcService.create(passcode);
		return "redirect:/passcodeList";
	}
	
	@GetMapping("/passcode/edit/{id}")
	public String editPasscode(@PathVariable("id") Long id, Model viewModel, @ModelAttribute("passcode") Passcode passcode) {
		viewModel.addAttribute("passcode", pcService.getById(id));
		return "EditPasscode.jsp";
	}
	
	@PostMapping("/passcode/update/{id}")
	public String updatePasscode(@ModelAttribute("passcode") Passcode passcode, BindingResult result) {
		if(result.hasErrors()) {
			return "EditPasscode.jsp";
		}
		this.pcService.updatePasscode(passcode);
		return "redirect:/admin/passcodeList";
	}
	
	@GetMapping("/passcode/delete/{id}")
	public String deletePasscode(@PathVariable("id") Long id) {
		this.pcService.deletePasscode(id);;
		return "redirect:/admin/passcodeList";
	}
}
