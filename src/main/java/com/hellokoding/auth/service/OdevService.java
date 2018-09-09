package com.hellokoding.auth.service;

import java.util.List;

import com.hellokoding.auth.model.Odev;
import com.hellokoding.auth.model.OgrenciBasariDetay;
import com.hellokoding.auth.model.OgrenciNot;




public interface OdevService {
	
	 public List<Odev> getAllHomeworks();
	 
	 public Odev getHomeworkByDate(String Date);
	 
	 public void saveOrUpdate(Odev Odev);
	 
	 public void deleteHomework(long id);
	 
	 public void giveMarkAndSaveHomework(long id);
	 
	 public Odev getHomeworkById(long id);
	 
	 
	 
	 public List<OgrenciNot> getAllHomeworksNotes();
	 
	 public OgrenciNot getHomeworkNoteById(long id);
	 
	 public void saveOrUpdate(OgrenciNot OgrenciNot);
	 
	 public void  deleteHMWNote(long id);

	 public List<OgrenciNot> getAllHomeworkNotesbyStudentId(long id);

	 public OgrenciBasariDetay getHomeworkDetailbyStudentNO(long nO);

	 public List<Odev> getAllHomeworksByClass(String verilensinif);

	 public List<OgrenciNot> getAllHomeworkNotesByClass(String sinifi);
	 
	 
	 
	
	 

	
	
	 
	 

}
