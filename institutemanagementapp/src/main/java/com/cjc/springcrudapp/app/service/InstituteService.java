package com.cjc.springcrudapp.app.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.springcrudapp.app.model.Institute;
import com.cjc.springcrudapp.app.repositry.InstituteRepositryI;

@Service
public class InstituteService implements InstituteServiceI{
	
	
	
	@Autowired
	InstituteRepositryI ir;

	@Override
	public void saveInfo(Institute institute) {
		ir.save(institute);
		
	}

	@Override
	public List<Institute> getAllData(String username, String password) {
	
		if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
			
			List<Institute> list=(List<Institute>) ir.findAll();
			return list;
		}else {
			List<Institute> list=ir.findByUsernameAndPassword(username, password);
			return list;
		}
		
	}

	@Override
	public List<Institute> findByUsernameAndPassword(String username, String password) {
		List<Institute> list=ir.findByUsernameAndPassword(username, password);
		return list;
	}

	@Override
	public List<Institute> delteById(int id) {
		ir.deleteById(id);
		List<Institute> list=(List<Institute>) ir.findAll();
		return list;
	}

	@Override
	public Institute getSingle(int id) {
		
		Optional op=ir.findById(id);
		
		if(op.isPresent()) {
			
			Institute in=(Institute) op.get();
			return in;
		}
		
		return null;
	}

	@Override
	public void saveUpdatedData(Institute institute) {
		ir.save(institute);
		
	}

	

	
	
	

}
