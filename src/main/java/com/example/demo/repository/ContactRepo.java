package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.ContactModel;

public interface ContactRepo extends JpaRepository<ContactModel, Long>{

}
