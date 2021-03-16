package com.danieljohn.sumodex.Models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="passwords")
public class PasswordString {
	
	//MEMBER VARIABLES
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String password;
	
	//CONSTRUCTOR
	public PasswordString() {
		
	}

	//GETTERS & SETTERS
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}




	
	
	

	
	
}
