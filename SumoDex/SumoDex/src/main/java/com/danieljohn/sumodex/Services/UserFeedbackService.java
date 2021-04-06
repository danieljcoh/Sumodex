package com.danieljohn.sumodex.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danieljohn.sumodex.Models.UserFeedback;
import com.danieljohn.sumodex.Repositories.UserFeedbackRepository;

@Service
public class UserFeedbackService {

	
	@Autowired
	private UserFeedbackRepository ufRepo;
	
	//GET ALL FEEDBACK
	public List<UserFeedback> getUserFeedbacks(){
		return this.ufRepo.findAll();
	}
	
	//GET ONE FEEDBACK
	public UserFeedback getById(Long id) {
		return this.ufRepo.findById(id).orElse(null);
	}
	
	//CREATE NEW FEEDBACK
	public UserFeedback createUserFeedback(UserFeedback userFeedbackAndComments) {
		return this.ufRepo.save(userFeedbackAndComments);
	}
	
	//EDIT FEEDBACK
	public UserFeedback updateUserFeedback(UserFeedback userFeedbackAndComments) {
		return this.ufRepo.save(userFeedbackAndComments);
	}
	
	//DELETE FEEDBACK
	public void deleteUserFeedback(Long id) {
		this.ufRepo.deleteById(id);
	}
}
