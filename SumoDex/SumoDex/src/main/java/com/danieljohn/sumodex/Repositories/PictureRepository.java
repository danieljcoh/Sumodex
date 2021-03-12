package com.danieljohn.sumodex.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.danieljohn.sumodex.Models.Picture;
import com.danieljohn.sumodex.Models.SumoWrestler;

@Repository
public interface PictureRepository extends CrudRepository<Picture, Long>{

	List<Picture> findAllByWrestler(SumoWrestler wrestler);
	
	
}
