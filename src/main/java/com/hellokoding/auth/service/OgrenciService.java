package com.hellokoding.auth.service;

import java.util.List;

import com.hellokoding.auth.model.Ogrenci;



public interface OgrenciService {
	
	 public List<Ogrenci> getAllStudents();
	 
	 public Ogrenci getStudentById(long id);
	 
	 public void saveOrUpdate(Ogrenci Ogrenci);
	 
	 public void Update(Ogrenci Ogrenci);
	 
	 public void deleteStudent(long id);

	 public List<Ogrenci> getAllStudentsByClass(String sinif);

}
