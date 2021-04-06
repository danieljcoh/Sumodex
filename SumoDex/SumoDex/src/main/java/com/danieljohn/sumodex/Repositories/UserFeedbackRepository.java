package com.danieljohn.sumodex.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.danieljohn.sumodex.Models.UserFeedback;

@Repository
public interface UserFeedbackRepository extends CrudRepository<UserFeedback, Long>{

	List<UserFeedback> findAll();
	
}
