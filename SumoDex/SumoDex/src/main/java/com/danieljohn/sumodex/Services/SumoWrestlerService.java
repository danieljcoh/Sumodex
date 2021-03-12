package com.danieljohn.sumodex.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danieljohn.sumodex.Models.SumoWrestler;
import com.danieljohn.sumodex.Repositories.SumoWrestlerRepository;

@Service
public class SumoWrestlerService {

	
	@Autowired
	private SumoWrestlerRepository swRepo;
	
	//GET ALL SUMO WRESTLERS
	public List<SumoWrestler> getAllSumoWrestlers(){
		return this.swRepo.findAll();
	}
	
	//GET ON SUMO WRESTLER
	public SumoWrestler getById(Long id) {
		return this.swRepo.findById(id).orElse(null);
	}
	
	//CREATE NEW SUMO WRESTLER
	public SumoWrestler create(SumoWrestler wrestler) {
		return this.swRepo.save(wrestler);
	}
	
	//EDIT SUMO WRESTLER
	public SumoWrestler updateWrestler(SumoWrestler wrestler) {
		return this.swRepo.save(wrestler);
	}
	
	//DELETE SUMO WRESTLER
	public void deleteWrestler(Long id) {
		this.swRepo.deleteById(id);
	}

}
