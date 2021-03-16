package com.danieljohn.sumodex.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.danieljohn.sumodex.Models.Password;

@Repository
public interface PasswordRepository extends CrudRepository<Password, Long>{

	List<Password> findAll();
}
 