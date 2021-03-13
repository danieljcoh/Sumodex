package com.danieljohn.sumodex.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danieljohn.sumodex.Models.Champion;
import com.danieljohn.sumodex.Repositories.ChampionRepository;

@Service
public class ChampionService {

	@Autowired
	private ChampionRepository cRepo;
	
	//GET ALL SUMO WRESTLERS
	public List<Champion> getAllChampions(){
		return this.cRepo.findAll();
	}
	
	//GET ONE CHAMPION
	public Champion getById(Long id) {
		return this.cRepo.findById(id).orElse(null);
	}
	
	//CREATE NEW CHAMPION
	public Champion create(Champion champion) {
		return this.cRepo.save(champion);
	}
	
	//EDIT CHAMPION
	public Champion updateChampion(Champion champion) {
		return this.cRepo.save(champion);
	}
	
	//DELETE CHAMPION
	public void deleteChampion(Long id) {
		this.cRepo.deleteById(id);
	}
}
