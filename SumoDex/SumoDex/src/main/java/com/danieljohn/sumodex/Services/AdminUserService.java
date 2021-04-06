package com.danieljohn.sumodex.Services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danieljohn.sumodex.Models.AdminUser;
import com.danieljohn.sumodex.Repositories.AdminUserRepository;

@Service
public class AdminUserService {

	@Autowired
	private AdminUserRepository auRepo;
	
	//REGISTER ADMIN AND HASH THEIR PASSWORD
	public AdminUser RegisterAdmin(AdminUser adminUser) {
		String hash = BCrypt.hashpw(adminUser.getAdminPassword(), BCrypt.gensalt());
		adminUser.setAdminPassword(hash);
		return this.auRepo.save(adminUser);
	}
	
	//FIND ADMIN BY USERNAME
    public AdminUser findByUsername(String username) {
        return auRepo.findByUsername(username);
    }
	
    //FIND ADMIN BY ID
    public AdminUser findAdminById(Long id) {
    	Optional<AdminUser> u = auRepo.findById(id);
    	
    	if(u.isPresent()) {
            return u.get();
    	} else {
    	    return null;
    	}
    }
    
    //AUTHENTICATE ADMIN
    public boolean authenticateAdmin(String adminUsername, String adminPassword) {
    	AdminUser adminUser = auRepo.findByUsername(adminUsername);
    	if(adminUser == null) {
    		return false;
    	} else {
    		if(BCrypt.checkpw(adminPassword, adminUser.getAdminPassword())) {
    			return true;
    		} else {
    			return false;
    		}
    	}
    }
    
	//GET ALL ADMIN
	public List<AdminUser> getAllAdminUsers(){
		return this.auRepo.findAll();
	}
	
	//DELETE ADMIN
	public void deleteAdmin(Long id) {
		this.auRepo.deleteById(id);
	}
    
}
