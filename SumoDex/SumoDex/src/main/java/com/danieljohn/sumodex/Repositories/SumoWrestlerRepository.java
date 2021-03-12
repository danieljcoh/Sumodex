package com.danieljohn.sumodex.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.danieljohn.sumodex.Models.SumoWrestler;

@Repository
public interface SumoWrestlerRepository extends CrudRepository<SumoWrestler, Long>{

	List<SumoWrestler> findAll();
}
