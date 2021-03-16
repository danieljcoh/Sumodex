package com.danieljohn.sumodex.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danieljohn.sumodex.Models.Password;
import com.danieljohn.sumodex.Repositories.PasswordRepository;

@Service
public class PasswordService {

	@Autowired
	private PasswordRepository pwRepo;
	
	//GET ALL PASSCODES
	public List<Password> getAllPasswords(){
		return this.pwRepo.findAll();
	}
	
	//GET ON SUMO WRESTLER
	public Password getById(Long id) {
		return this.pwRepo.findById(id).orElse(null);
	}
	
	//CREATE NEW PASSCODE
	public Password create(Password passwordString) {
		return this.pwRepo.save(passwordString);
	}
	
	//EDIT PASSCODE
	public Password updatePassword(Password passwordString) {
		return this.pwRepo.save(passwordString);
	}
	
	//DELETE PASSCODE
	public void deletePassword(Long id) {
		this.pwRepo.deleteById(id);
	}

}
