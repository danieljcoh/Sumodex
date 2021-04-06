package com.danieljohn.sumodex.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.danieljohn.sumodex.Models.AdminUser;

@Repository
public interface AdminUserRepository extends CrudRepository<AdminUser, Long>{
	
	AdminUser findByUsername(String adminUsername);
	
	boolean existsByUsername(String adminUsername);

	List<AdminUser> findAll();
}
