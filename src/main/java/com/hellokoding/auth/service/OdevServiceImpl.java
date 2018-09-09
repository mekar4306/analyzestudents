package com.hellokoding.auth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hellokoding.auth.model.Odev;

import com.hellokoding.auth.model.OgrenciBasariDetay;
import com.hellokoding.auth.model.OgrenciNot;
import com.hellokoding.auth.repository.OdevNotRepository;
import com.hellokoding.auth.repository.OdevRepository;
import com.hellokoding.auth.repository.jdbc.OdevRepositoryDAO;
import com.hellokoding.auth.repository.jdbc.OgrBasariRepositoryDAO;




@Transactional
@Service
public class OdevServiceImpl implements OdevService {

	@Autowired
	private OdevRepository odevRepository;
	
	@Autowired
	private OdevRepositoryDAO odevRepositoryDAO;
	
	@Autowired
	private OdevNotRepository odevNotRepository;
	
	@Autowired
	private OgrBasariRepositoryDAO ogrBasariRepositoryDAO;
	
	
	         
	
	@Override
	public List<Odev> getAllHomeworks() {
		// TODO Auto-generated method stub
		return (List<Odev>) odevRepository.findAll();
	}


	
	
	@Override
	public Odev getHomeworkByDate(String Date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveOrUpdate(Odev Odev) {
		odevRepository.save(Odev);

	}

	@Override
	public void deleteHomework(long id) {
		
		//Odev tablosundan ilgili ödevi silen kod
		odevRepository.deleteById(id);
		
		//OgrenciNot Tablosundan silinne ödeve ait not durumlarını silen kod
		odevRepositoryDAO.deleteHomeworksNotesByOdevId(id);
	
		
		

	}



	@Override
	public void giveMarkAndSaveHomework(long id) {
		odevRepositoryDAO.giveMarkAndSaveHomework(id);	
	}





	@Override
	public Odev getHomeworkById(long id) {

		return odevRepository.findById(id).get();
		
		
	}



	@Override
	public List<OgrenciNot> getAllHomeworksNotes() {
		// TODO Auto-generated method stub
		return (List<OgrenciNot>) odevNotRepository.findAll();
	}




	@Override
	public OgrenciNot getHomeworkNoteById(long id) {
		// TODO Auto-generated method stub
		return odevNotRepository.findById(id).get();
	}




	@Override
	public void saveOrUpdate(OgrenciNot OgrenciNot) {
		odevNotRepository.save(OgrenciNot);
		
	}




	@Override
	public void deleteHMWNote(long id) {
		
	   
		odevNotRepository.deleteById(id); 
		
		
	}




	@Override
	public List<OgrenciNot> getAllHomeworkNotesbyStudentId(long NO) {
		// TODO Auto-generated method stub
		return odevRepositoryDAO.findAllHomeworkNotesByStudentId(NO);
	}




	@Override
	public OgrenciBasariDetay getHomeworkDetailbyStudentNO(long NO) {
		// TODO Auto-generated method stub
		return ogrBasariRepositoryDAO.findSuccessHomeworkByNo(NO);
	}




	@Override
	public List<Odev> getAllHomeworksByClass(String verilensinif) {
		// TODO Auto-generated method stub
		return odevRepository.findByVerilensinif(verilensinif);
	}




	@Override
	public List<OgrenciNot> getAllHomeworkNotesByClass(String sinifi) {
		// TODO Auto-generated method stub
	 return (List<OgrenciNot>) odevNotRepository.findBySinifi(sinifi);
	 
	}




	




	




	



	


	
	


}
