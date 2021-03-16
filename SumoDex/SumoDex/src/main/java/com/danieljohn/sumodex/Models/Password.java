package com.danieljohn.sumodex.Models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="passwords")
public class Password {
	
	//MEMBER VARIABLES
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String passwordString;
	
	//CONSTRUCTOR
	public Password() {
		
	}
	
	//TIMESTAMPS
	@Column
	@DateTimeFormat(pattern = "MM-dd-YY HH:mm:ss")
	private Date createdAt;
	@DateTimeFormat(pattern = "MM-dd-YY HH:mm:ss")
	private Date updatedAt;
	
	//Do this before the object is inserted into the DB
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}
	
	@PreUpdate
	protected void onUdate() {
		this.updatedAt = new Date();
	}
	

	//GETTERS & SETTERS
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPasswordString() {
		return passwordString;
	}

	public void setPasswordString(String passwordString) {
		this.passwordString = passwordString;
	}





	
	
	

	
	
}
