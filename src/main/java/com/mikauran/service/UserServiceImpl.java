package com.mikauran.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mikauran.model.User;
import com.mikauran.repository.UserRepository;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public List<User> findAllUsers() {
		return (List<User>) userRepository.findAll();
	}
	
	public List<User> findAllUsersActive(){
		return (List<User>) userRepository.findAllUsersActive();
	}

	public User findById(long id) {
		return userRepository.findOne(id);
	}

	
	public User findByName(String name) {
		return userRepository.findByUserName(name);
	}

	public void saveUser(User user) {
		userRepository.save(user);
	}

	public void updateUser(User user) {
		userRepository.save(user);
	}

	
	public void deleteUserById(long id) {
		userRepository.delete(id);
	}

	
	public void deleteAllUsers() {
		userRepository.deleteAll();
	}

	
	public boolean isUserExist(User user) {
		return findByName(user.getUserName()) !=null;
	}
	

}
