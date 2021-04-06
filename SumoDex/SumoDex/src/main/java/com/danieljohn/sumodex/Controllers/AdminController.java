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

import com.danieljohn.sumodex.Models.AdminUser;
import com.danieljohn.sumodex.Models.UserFeedback;
import com.danieljohn.sumodex.Repositories.AdminUserRepository;
import com.danieljohn.sumodex.Services.AdminUserService;
import com.danieljohn.sumodex.Services.UserFeedbackService;
import com.danieljohn.sumodex.Validators.AdminUserValidator;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	/*
	 * @Autowired private ChampionService cService;
	 */
	
	/*
	 * @Autowired private PasswordService pwService;
	 */
	
	@Autowired
	private UserFeedbackService ufService;
	
	@Autowired
	private AdminUserService auService;
	
	@Autowired
	private AdminUserRepository auRepo;
	
	@Autowired
	private AdminUserValidator auValidator;
	

	//LOGIN 
	@GetMapping("/home")
	public String adminLogin() {
		return "AdminLogin.jsp";
	}
	
	@PostMapping("/login")
	public String login(HttpSession session, @RequestParam("loginUsername") String username, @RequestParam("loginPassword") String password,
			RedirectAttributes redirectAttrs) {
		if(!this.auService.authenticateAdmin(username, password)) {
			redirectAttrs.addFlashAttribute("errorFromLoggingIn", "Invalid Credentials");
			System.out.println("NOT IN DB");
			return "redirect:/admin/home";
		}
		AdminUser adminUser = this.auService.findByUsername(username);
		session.setAttribute("adminUser_Id", adminUser.getId());
		System.out.println("SUCCESS");
		return "redirect:/admin/dashboardHome";
	}
	
	@GetMapping("/logout")
	public String adminLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin/home";
	}

	
	@GetMapping("/dashboardHome")
	public String adminHome(Model viewModel, HttpSession session) {
		Long adminUserId = (Long)session.getAttribute("adminUser_Id");
		if (adminUserId == null) {
			return "redirect:/admin/home ";
		}
		return "AdminHome.jsp";
	}
	
	//FEEDBACK SECTION
	@GetMapping("/userFeedbackList")
	public String userFeedbackList(Model viewModel) {
		List<UserFeedback> allUserFeedback = this.ufService.getUserFeedbacks();	
		viewModel.addAttribute("allUserFeedback", allUserFeedback);
		return "UserFeedbackList.jsp"; 
	}
	
	@GetMapping("/feedback/createUserFeedback")
	public String newUserFeedback(@ModelAttribute("userFeedback") UserFeedback userCommentsAndFeedback, Model viewModel) {
		return "UserFeedback_CreateNew.jsp";
	}
	
	@PostMapping("/feedback/submitFeedback")
	public String createUserFeedback(@Valid @ModelAttribute("userFeedback") UserFeedback userCommentsAndFeedback, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("errors");
			return "redirect:/admin/feedback/createUserFeedback";
		}
		this.ufService.createUserFeedback(userCommentsAndFeedback);
		return "redirect:/admin/userFeedbackList";
	}
	
	@GetMapping("/feedback/editFeedback/{id}")
	public String editFeedback(@PathVariable("id") Long id, Model viewModel, @ModelAttribute("userFeedback") UserFeedback userCommentsAndFeedback) {
		viewModel.addAttribute("userFeedback", ufService.getById(id));
		return "UserFeedback_Edit.jsp";
	}
	
	@PostMapping("/feedback/updateFeedback/{id}")
	public String updateFeedback(@ModelAttribute("userFeedback") UserFeedback userCommentsAndFeedback, BindingResult result) {
		if(result.hasErrors()) {
			return "UserFeedback_Edit.jsp";
		}
		this.ufService.updateUserFeedback(userCommentsAndFeedback);
		return "redirect:/admin/userFeedbackList";
	}
	
	@GetMapping("/feedback/deleteFeedback/{id}")
	public String deleteFeedback(@PathVariable("id") Long id) {
		this.ufService.deleteUserFeedback(id);;
		return "redirect:/admin/userFeedbackList";
	}
	
	@GetMapping("/user/feedback/createUserFeedback")
	public String USERcreatesNewUserFeedback(@ModelAttribute("userFeedback") UserFeedback userCommentsAndFeedback, Model viewModel) {
		return "USER_UserFeedback_CreateNew.jsp";
	}
	
	@PostMapping("/user/feedback/submitNewFeedback")
	public String createUsersNewFeedback(@Valid @ModelAttribute("userFeedback") UserFeedback userCommentsAndFeedback, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("errors");
			return "redirect:/admin/user/feedback/createUserFeedback";
		}
		this.ufService.createUserFeedback(userCommentsAndFeedback);
		return "redirect:/wrestler/1";
	}
	
	
	//CREATING / EDITING / DELETING ADMIN
	@GetMapping("/adminList")
	public String adminList(Model viewModel) {
		List<AdminUser> allAdminUsers = this.auService.getAllAdminUsers();
		viewModel.addAttribute("allAdminUsers", allAdminUsers);
		return "AdminList.jsp"; 
	}
	
	@GetMapping("/createNewAdmin")
	public String newAdmin(@ModelAttribute("newAdmin") AdminUser newAdmin, Model viewModel) {
		return "Admin_NewAdmin.jsp";
	}
	
	@PostMapping("/submitNewAdmin")
	public String createNewAdmin(@Valid @ModelAttribute("newAdmin") AdminUser adminUser, HttpSession session, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("errors");
			return "redirect:/admin/createNewAdmin";
		}
		AdminUser adminThatJustRegistered = this.auService.RegisterAdmin(adminUser);
		session.setAttribute("userAdmin_Id", adminThatJustRegistered.getId());
		return "redirect:/admin/adminList";
	}
	
	//NEED A DELETE ADMIN HERE
	
	
	
	
	
	
	/*
	 * //DEPRECATED
	 * 
	 * @GetMapping("/passwordList") public String passwordList(Model viewModel) {
	 * List<Password> allPasswords = this.pwService.getAllPasswords();
	 * viewModel.addAttribute("allPasswords", allPasswords); return
	 * "PasswordList.jsp"; }
	 * 
	 * @GetMapping("/createNewPassword") public String
	 * newPassword(@ModelAttribute("password") Password passwordString, Model
	 * viewModel) { return "NewPassword.jsp"; }
	 * 
	 * @PostMapping("/submitNewPassword") public String
	 * createPassword(@Valid @ModelAttribute("password") Password password,
	 * BindingResult result) { if(result.hasErrors()) {
	 * System.out.println("errors"); return "redirect:/admin/createNewPassword"; }
	 * this.pwService.create(password); return "redirect:/admin/passwordList"; }
	 * 
	 * @GetMapping("/password/edit/{id}") public String
	 * editPassword(@PathVariable("id") Long id, Model
	 * viewModel, @ModelAttribute("password") Password password) {
	 * viewModel.addAttribute("password", pwService.getById(id)); return
	 * "EditPassword.jsp"; }
	 * 
	 * @PostMapping("/password/update/{id}") public String
	 * updatePassword(@ModelAttribute("password") Password passwordString,
	 * BindingResult result) { if(result.hasErrors()) { return "EditPassword.jsp"; }
	 * this.pwService.updatePassword(passwordString); return
	 * "redirect:/admin/passwordList"; }
	 * 
	 * @GetMapping("/password/delete/{id}") public String
	 * deletePassword(@PathVariable("id") Long id) {
	 * this.pwService.deletePassword(id);; return "redirect:/admin/passwordList"; }
	 */
}
