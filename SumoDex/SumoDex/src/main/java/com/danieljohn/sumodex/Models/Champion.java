package com.danieljohn.sumodex.Models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="champions")
public class Champion {

	//MEMBER VARIABLES
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String shikona;
	private String finalScore;
	public String tournamentBasho;
	
	//CONSTRUCTOR
	public Champion() {
		
	}

	//GETTERS & SETTERS
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getShikona() {
		return shikona;
	}

	public void setShikona(String shikona) {
		this.shikona = shikona;
	}

	public String getFinalScore() {
		return finalScore;
	}

	public void setFinalScore(String finalScore) {
		this.finalScore = finalScore;
	}

	public String getTournamentBasho() {
		return tournamentBasho;
	}

	public void setTournamentBasho(String tournamentBasho) {
		this.tournamentBasho = tournamentBasho;
	}
	
	
	
	
	
	
	
	
	
	
	
}
