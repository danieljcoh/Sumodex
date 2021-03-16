package com.danieljohn.sumodex.Models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="sumowrestlers")
public class SumoWrestler {

	//MEMBER VARIABLES
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String shikona;
	private String name;
	private String sumoRank;
	private String birthplace;
	private String birthday;
	private String heya;
	private String height;
	private String weight;
	private String favTechnique;
	
	//OneToOne
	@OneToOne(mappedBy="wrestler", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	private Picture pics;

	//CONSTRUCTOR
	public SumoWrestler() {
		
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getsumoRank() {
		return sumoRank;
	}

	public void setsumoRank(String sumoRank) {
		this.sumoRank = sumoRank;
	}

	public String getBirthplace() {
		return birthplace;
	}

	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getHeya() {
		return heya;
	}

	public void setHeya(String heya) {
		this.heya = heya;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getFavTechnique() {
		return favTechnique;
	}

	public void setFavTechnique(String favTechnique) {
		this.favTechnique = favTechnique;
	}


	public Picture getPics() {
		return pics;
	}


	public void setPics(Picture pics) {
		this.pics = pics;
	}

	
}
