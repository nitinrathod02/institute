package com.cjc.springcrudapp.app.repositry;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.cjc.springcrudapp.app.model.Institute;

public interface InstituteRepositryI extends CrudRepository<Institute, Integer>{
	
	public List<Institute> findByUsernameAndPassword(String username,String password);
	
	

}
