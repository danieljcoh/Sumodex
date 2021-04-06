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
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="adminusers")
public class AdminUser {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String adminName;
	private String username;
	private String adminPassword;
	@Transient
	private String adminPasswordConf;

	//TIMESTAMPS
	@Column(updatable=false)
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
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	//CONSTRUCTOR
	public AdminUser() {
		
	}

	//GETTERS & SETTERS
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public String getAdminPasswordConf() {
		return adminPasswordConf;
	}

	public void setAdminPasswordConf(String adminPasswordConf) {
		this.adminPasswordConf = adminPasswordConf;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	
	
	
}
