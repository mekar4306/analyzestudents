package com.hellokoding.auth.repository;

import org.springframework.data.repository.CrudRepository;

import com.hellokoding.auth.model.OgrenciNot;
import java.lang.String;
import java.util.List;





public interface OdevNotRepository extends CrudRepository<OgrenciNot, Long> {

	List<OgrenciNot> findBySinifi(String sinifi);
	
	
   
	
	
	
}
