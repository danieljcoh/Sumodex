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
@Table(name="userFeedback")
public class UserFeedback {

	//MEMBER VARIABLES
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String usersName;
	private String titleOfMessage;
	private String feedbackSection;
	
	
	
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

	//CONSTUCTOR
	public UserFeedback() {
		
	}

	
	//GETTERS & SETTERS
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsersName() {
		return usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getTitleOfMessage() {
		return titleOfMessage;
	}

	public void setTitleOfMessage(String titleOfMessage) {
		this.titleOfMessage = titleOfMessage;
	}

	public String getFeedbackSection() {
		return feedbackSection;
	}

	public void setFeedbackSection(String feedbackSection) {
		this.feedbackSection = feedbackSection;
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
