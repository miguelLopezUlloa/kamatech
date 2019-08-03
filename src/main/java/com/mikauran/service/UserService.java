package com.mikauran.service;

import java.util.List;

import com.mikauran.model.User;

public interface UserService {

	User findById(long id);
	
	User findByName(String name);
	
	void saveUser(User user);
	
	void updateUser(User user);
	
	void deleteUserById(long id);
	
	List<User> findAllUsers();
	
	List<User> findAllUsersActive();
	
	void deleteAllUsers();
	
	public boolean isUserExist(User user);
	
}
