package com.danieljohn.sumodex.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danieljohn.sumodex.Models.PasswordString;
import com.danieljohn.sumodex.Repositories.PasswordRepository;

@Service
public class PasswordService {

	@Autowired
	private PasswordRepository pwRepo;
	
	//GET ALL PASSCODES
	public List<PasswordString> getAllPasswords(){
		return this.pwRepo.findAll();
	}
	
	//GET ON SUMO WRESTLER
	public PasswordString getById(Long id) {
		return this.pwRepo.findById(id).orElse(null);
	}
	
	//CREATE NEW PASSCODE
	public PasswordString create(PasswordString passwordString) {
		return this.pwRepo.save(passwordString);
	}
	
	//EDIT PASSCODE
	public PasswordString updatePassword(PasswordString passwordString) {
		return this.pwRepo.save(passwordString);
	}
	
	//DELETE PASSCODE
	public void deletePassword(Long id) {
		this.pwRepo.deleteById(id);
	}
}
