package com.hellokoding.auth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hellokoding.auth.model.Ogrenci;
import com.hellokoding.auth.repository.jdbc.*;




@Service
@Transactional
public class OgrenciServiceImpl implements OgrenciService {

	@Autowired
	private OgrenciRepositoryDAO OgrenciRepositoryDAO;
	
	
	@Override
	public List<Ogrenci> getAllStudents() {
		
		//return (List<Ogrenci>) ogrenciRepository.findAll();
		return (List<Ogrenci>) OgrenciRepositoryDAO.findAll();
		
		
	}
	
	

	@Override
	public Ogrenci getStudentById(long id) {		
		
		return OgrenciRepositoryDAO.findById(id);
		//return  ogrenciRepository.findById(id).get();
	}

	@Override
	public void saveOrUpdate(Ogrenci ogrenci) {
		//ogrenciRepository.save(ogrenci);
		OgrenciRepositoryDAO.create(ogrenci);
	}

	@Override
	public void deleteStudent(long id) {

		OgrenciRepositoryDAO.delete(id);
		//ogrenciRepository.deleteById(id);
	}



	@Override
	public void Update(Ogrenci Ogrenci) {
		// TODO Auto-generated method stub
		OgrenciRepositoryDAO.update(Ogrenci);
	}



	@Override
	public List<Ogrenci> getAllStudentsByClass(String sinif) {
		// TODO Auto-generated method stub
		return OgrenciRepositoryDAO.getAllStudentsByClass(sinif);
	}

}
