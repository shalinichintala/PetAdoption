package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.ContactModel;
import com.example.demo.repository.ContactRepo;

@Service
public class ContactServiceImpl implements ContactService {
	
	
	@Autowired
	public ContactRepo contactRepo;

	
	public String saveContact(ContactModel cm) {
		try {
			contactRepo.save(cm);
			return "Submitted Successfully";
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return "Failed";
	}
	
}
