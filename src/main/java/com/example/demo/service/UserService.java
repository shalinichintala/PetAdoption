package com.example.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepo;

import jakarta.transaction.Transactional;

@Service
public class UserService {
	@Autowired
	private UserRepo uss;
	
	public Optional<User> findByGmail(String gmail,String password){
		return uss.findByGmail(gmail,password);
	}
	
	@Transactional
	
	public String save(User student) {
		try {
			
			uss.save(student);
			return "Registration success";
		}catch(Exception e){
			System.out.println(e);
		}
		return "failed";
	}
	
}