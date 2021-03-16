package com.danieljohn.sumodex.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.danieljohn.sumodex.Models.PasswordString;

@Repository
public interface PasswordRepository extends CrudRepository<PasswordString, Long>{

	List<PasswordString> findAll();
}
 