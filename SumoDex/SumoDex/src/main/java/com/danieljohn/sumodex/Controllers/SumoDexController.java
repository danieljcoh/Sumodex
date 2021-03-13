package com.danieljohn.sumodex.Controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.danieljohn.sumodex.Models.SumoWrestler;
import com.danieljohn.sumodex.Services.PictureService;
import com.danieljohn.sumodex.Services.SumoWrestlerService;

@Controller
@RequestMapping("/wrestler")
public class SumoDexController {

	
	@Autowired
	private SumoWrestlerService swService;
	
	@Autowired 
	private PictureService pService;
	
//	@GetMapping("")
//	public String home() {
//		return "Sumodex.jsp";
//	}
	
	@GetMapping("/{id}")
	public String viewWrestler(@PathVariable("id") Long id, HttpSession session, Model viewModel, @ModelAttribute("wrestler") SumoWrestler wrestler) {
		viewModel.addAttribute("wrestler", swService.getById(id));	
		viewModel.addAttribute("pictures", this.pService.wrestlerPictures(wrestler));
		if(session.getAttribute("wrestler") == null) {
			session.setAttribute("wrestler", 1);
		}
		return "Sumodex.jsp";
	}

	@GetMapping("/next/{id}")
	public String seeNextWrestler(@PathVariable("id") Long id, HttpSession session, Model viewModel, @ModelAttribute("wrestler") SumoWrestler wrestler) {
		int nextId = (int) (id + 1);
		viewModel.addAttribute("wrestler", nextId);
		if(nextId == 4) {
			nextId = 1;
			return "redirect:/wrestler/" + nextId;
		}
		return "redirect:/wrestler/" + nextId;
		
	}
	
	@GetMapping("/last/{id}")
	public String seeLastWrestler(@PathVariable("id") Long id, HttpSession session, Model viewModel, @ModelAttribute("wrestler") SumoWrestler wrestler) {
		int lastId = (int) (id - 1);
		viewModel.addAttribute("wrestler", lastId);
		if(lastId == 0) {
			lastId = 3;
			return "redirect:/wrestler/" + lastId;		
		}
		return "redirect:/wrestler/" + lastId;
		
	}
	
}
