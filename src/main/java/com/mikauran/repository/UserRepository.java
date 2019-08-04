package com.mikauran.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.mikauran.model.User;

public interface UserRepository extends CrudRepository<User, Long> {
	
	public User findByUserName(String name);
	
	@Query("SELECT u FROM User u WHERE u.status ='ACTIVE'")
	public List<User> findAllUsersActive();
}
