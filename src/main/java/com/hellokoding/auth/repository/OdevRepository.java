package com.hellokoding.auth.repository;

import org.springframework.data.repository.CrudRepository;

import com.hellokoding.auth.model.Odev;
import java.lang.String;
import java.util.List;

public interface OdevRepository extends CrudRepository<Odev, Long> {

	
 	List<Odev> findByVerilensinif(String verilensinif);
}
