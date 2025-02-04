package com.example.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.User;



public interface UserRepo extends JpaRepository<User, Long>{
	
	@Query("select u from User u where u.gmail=?1 and u.password=?2")
	 Optional<User> findByGmail(String gmail,String password);
}
