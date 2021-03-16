package com.danieljohn.sumodex.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danieljohn.sumodex.Models.Passcode;
import com.danieljohn.sumodex.Repositories.PasscodeRepository;

@Service
public class PasscodeService {

	@Autowired
	private PasscodeRepository pcRepo;
	
	//GET ALL PASSCODES
	public List<Passcode> getAllPasscodes(){
		return this.pcRepo.findAll();
	}
	
	//GET ON SUMO WRESTLER
	public Passcode getById(Long id) {
		return this.pcRepo.findById(id).orElse(null);
	}
	
	//CREATE NEW PASSCODE
	public Passcode create(Passcode passcode) {
		return this.pcRepo.save(passcode);
	}
	
	//EDIT PASSCODE
	public Passcode updatePasscode(Passcode passcode) {
		return this.pcRepo.save(passcode);
	}
	
	//DELETE PASSCODE
	public void deletePasscode(Long id) {
		this.pcRepo.deleteById(id);
	}
}
