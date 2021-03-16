package com.danieljohn.sumodex.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.danieljohn.sumodex.Models.Passcode;

@Repository
public interface PasscodeRepository extends CrudRepository<Passcode, Long>{

	List<Passcode> findAll();
}
 