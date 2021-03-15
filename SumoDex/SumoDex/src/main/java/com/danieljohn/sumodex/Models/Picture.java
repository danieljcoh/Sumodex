package com.danieljohn.sumodex.Models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="pictures")
public class Picture {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String image_url;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="sumowrestler_id")
	private SumoWrestler wrestler;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyy-MM-DD HH:mm:ss")
	private Date createdAt;
	
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	public Picture() {
		
	}

	//CONSTRUCTOR
	public Picture(String image_url, SumoWrestler wrestler) {
		
		this.image_url = image_url;
		this.wrestler = wrestler;
	}

	//GETTERS & SETTERS
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public SumoWrestler getWrestler() {
		return wrestler;
	}

	public void setWrestler(SumoWrestler wrestler) {
		this.wrestler = wrestler;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	
	
	
}
