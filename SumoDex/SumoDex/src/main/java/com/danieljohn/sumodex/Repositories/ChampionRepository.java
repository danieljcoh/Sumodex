package com.danieljohn.sumodex.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.danieljohn.sumodex.Models.Champion;

@Repository
public interface ChampionRepository extends CrudRepository<Champion, Long>{

	List<Champion> findAll();
}
