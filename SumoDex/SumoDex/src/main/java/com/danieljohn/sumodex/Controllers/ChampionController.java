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

import com.danieljohn.sumodex.Models.Champion;
import com.danieljohn.sumodex.Models.SumoWrestler;
import com.danieljohn.sumodex.Services.ChampionService;
import com.danieljohn.sumodex.Services.PictureService;
import com.danieljohn.sumodex.Services.SumoWrestlerService;

@Controller
@RequestMapping("/champions")
public class ChampionController {

	@Autowired
	private SumoWrestlerService swService;
	
	@Autowired 
	private PictureService pService;
	
	@Autowired
	private ChampionService cService;
	
	@GetMapping("")
	public String championsHome(Model viewModel, HttpSession session) {
		List<Champion> allChampions = this.cService.getAllChampions();	
		viewModel.addAttribute("allChampions", allChampions);
		return "ChampionsList.jsp";
	}
	
	@GetMapping("/createNewChampion")
	public String newChampion(@ModelAttribute("champion") Champion champion, Model viewModel) {
		return "ChampionsCreateNew.jsp";
	}
	
	@PostMapping("/submitNewChampion")
	public String create(@Valid @ModelAttribute("champion") Champion champion, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("errors");
			return "redirect:/createNewChampion";
		}
		this.cService.create(champion);
		return "redirect:/champions";
	}
	
	@GetMapping("/edit/{id}")
	public String editChampion(@PathVariable("id") Long id, Model viewModel, @ModelAttribute("champion") Champion champion) {
		viewModel.addAttribute("champion", cService.getById(id));
		return "ChampionsEdit.jsp";
	}
	
	@PostMapping("/update/{id}")
	public String updateChampion(@ModelAttribute("Champion") Champion champion, BindingResult result) {
		if(result.hasErrors()) {
			return "ChampionsEdit.jsp";
		}
		this.cService.updateChampion(champion);
		return "redirect:/champions";
	}
	
	@GetMapping("delete/{id}")
	public String deleteChampion(@PathVariable("id") Long id) {
		this.cService.deleteChampion(id);;
		return "redirect:/champions";
	}
	
}
