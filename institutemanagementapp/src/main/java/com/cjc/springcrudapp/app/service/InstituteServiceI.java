package com.cjc.springcrudapp.app.service;

import java.util.List;
import java.util.Optional;

import com.cjc.springcrudapp.app.model.Institute;

public interface InstituteServiceI {
	
	public void saveInfo(Institute institute);
	public List<Institute> getAllData(String username,String password);
	public List<Institute> findByUsernameAndPassword(String username,String password);
	public List<Institute> delteById(int id);
	public Institute getSingle(int id);
	public void saveUpdatedData(Institute institute);

}
