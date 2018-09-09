package com.hellokoding.auth.repository.jdbc;

import java.util.List;

import com.hellokoding.auth.model.Ogrenci;


public interface OgrenciRepositoryDAO {
	
	List<Ogrenci> findAll();
	List<Ogrenci> findByLastName(String lastname);
	Ogrenci findById(Long id);
	
	
	void create(Ogrenci Ogrenci);
	void update(Ogrenci Ogrenci);
	void delete(Long id);
	List<Ogrenci> getAllStudentsByClass(String sinif);
	
	

}
