package com.danieljohn.sumodex.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danieljohn.sumodex.Models.Picture;
import com.danieljohn.sumodex.Models.SumoWrestler;
import com.danieljohn.sumodex.Repositories.PictureRepository;

@Service
public class PictureService {

	@Autowired
	private PictureRepository pRepo;
	
	
	//Create Image Object, Save to DB
	public void uploadPic(SumoWrestler wrestler, String url) {
		Picture newPic = new Picture(url, wrestler);
		this.pRepo.save(newPic);
	}
	
	public List<Picture> wrestlerPictures(SumoWrestler wrestler){
		return this.pRepo.findAllByWrestler(wrestler);
	}
	
}
