package com.danieljohn.sumodex.Controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.danieljohn.sumodex.Models.SumoWrestler;
import com.danieljohn.sumodex.Services.PictureService;
import com.danieljohn.sumodex.Services.SumoWrestlerService;

@Controller
@RequestMapping("/wrestlers")
public class SumoWrestlerController {

	//This is an Admin Page so login and Session are both required to access. Even though these pages are not labeled "/admin/"
	
	@Autowired
	private SumoWrestlerService swService;
	
	@Autowired
	private PictureService pService;
	
	//UPLOADED IMAGE FOLDER TO REFERENCE
	private static String UPLOADED_FOLDER = "src/main/resources/static/images/";
	
	
	@GetMapping("")
	public String wrestlers(Model viewModel, HttpSession session) {
		Long adminUserId = (Long)session.getAttribute("adminUser_Id");
		if (adminUserId == null) {
			return "redirect:/admin/home";
		}
		List<SumoWrestler> allSumoWrestlers = this.swService.getAllSumoWrestlers();	
		viewModel.addAttribute("allSumoWrestlers", allSumoWrestlers);
		return "SumoWrestlerHome.jsp";
	}
	
	@GetMapping("/createNewWrestler")
	public String newWrestler(@ModelAttribute("wrestler") SumoWrestler wrestler, Model viewModel, HttpSession session) {
		Long adminUserId = (Long)session.getAttribute("adminUser_Id");
		if (adminUserId == null) {
			return "redirect:/admin/home";
		}
		return "NewSumoWrestler.jsp";
	}
	
	@PostMapping("/submitNewWrestler")
	public String create(@Valid @ModelAttribute("wrestler") SumoWrestler wrestler, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("errors");
			return "redirect:/createNewWrestler";
		}
		this.swService.create(wrestler);
		return "redirect:/wrestlers";
	}
	
	@GetMapping("/edit/{id}")
	public String editWrestler(@PathVariable("id") Long id, Model viewModel, @ModelAttribute("wrestler") SumoWrestler wrestler, HttpSession session) {
		Long adminUserId = (Long)session.getAttribute("adminUser_Id");
		if (adminUserId == null) {
			return "redirect:/admin/home";
		}
		viewModel.addAttribute("wrestler", swService.getById(id));
		return "EditSumoWrestler.jsp";
	}
	
	@PostMapping("/update/{id}")
	public String updateWrestler(@ModelAttribute("wrestler") SumoWrestler wrestler, BindingResult result) {
		if(result.hasErrors()) {
			return "EditSumoWrestler.jsp";
		}
		this.swService.updateWrestler(wrestler);
		return "redirect:/wrestlers";
	}
	
	@GetMapping("delete/{id}")
	public String deleteWrestler(@PathVariable("id") Long id, HttpSession session) {
		Long adminUserId = (Long)session.getAttribute("adminUser_Id");
		if (adminUserId == null) {
			return "redirect:/admin/home";
		}
		this.swService.deleteWrestler(id);;
		return "redirect:/wrestlers";
	}
	
	@PostMapping("/upload/{id}")
	public String upload(@PathVariable("id") Long id, Model viewModel, @ModelAttribute("wrestler-pic") SumoWrestler modelWrestler, @RequestParam("pic") MultipartFile file, HttpSession session, RedirectAttributes redirectAttr) {
		//get the wrestler
		SumoWrestler wrestler = this.swService.getById(id);
		if(file.isEmpty()) {
			redirectAttr.addFlashAttribute("message", "Upload field cannot be empty");
			return "redirect:/wrestlers";
		}
		try {
			//GET THE FILE AND SAVE IT SOEMWHERE
			byte[] bytes = file.getBytes();
			Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
			Files.write(path, bytes);
			//GET URL OF FILE JUST UPLOADED
			String url = "/images/" + file.getOriginalFilename();
			this.pService.uploadPic(wrestler, url);
		} catch (IOException e) {
			e.printStackTrace();
		}
		viewModel.addAttribute("wrestler-pic", swService.getById(id));
		return "redirect:/wrestlers";
	}
	
}
