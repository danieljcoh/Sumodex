package com.danieljohn.sumodex.Validators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;

import com.danieljohn.sumodex.Models.AdminUser;
import com.danieljohn.sumodex.Repositories.AdminUserRepository;

@Component
public class AdminUserValidator {

	@Autowired
	private AdminUserRepository auRepo;
	
	public boolean supports(Class<?> clazz) {
		return AdminUser.class.equals(clazz);
	}
	
	public void validate(Object target, Errors errors) {
		AdminUser adminUser = (AdminUser) target;
		
		if(!adminUser.getAdminPassword().equals(adminUser.getAdminPasswordConf())) {
			errors.rejectValue("password", "Match", "The passwords do not match!");
		}
		
		if(this.auRepo.existsByUsername(adminUser.getUsername())) {
			errors.rejectValue("username", "Unique", "You alreadyt exist in the DB!");
		}
	}
}
