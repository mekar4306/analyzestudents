package com.hellokoding.auth.repository.jdbc;

import java.util.List;


import com.hellokoding.auth.model.OgrenciNot;

public interface OdevRepositoryDAO {

	public void giveMarkAndSaveHomework(long id);

	public List<OgrenciNot> findAllHomeworkNotesByStudentId(long id);
	
	public void deleteHomeworksNotesByOdevId(long odevId);

	
	
	 
	
}

