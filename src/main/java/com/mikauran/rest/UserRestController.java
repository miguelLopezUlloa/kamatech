package com.mikauran.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.mikauran.model.User;
import com.mikauran.service.UserService;

@RestController
public class UserRestController {

	@Autowired
	UserService userService;
	
	//----- Retrieve All Users ----------------//
	@RequestMapping(value = "/user/", method= RequestMethod.GET)
	public ResponseEntity<List<User>> listAllUsers(){
		List<User> users = userService.findAllUsers();
		
		if(users.isEmpty()){
			return new ResponseEntity<List<User>>(HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<List<User>>(users, HttpStatus.OK );
	}
	
	
	/**
	 * Retrieve All Employees ACTIVE
	 * 
	 * @return
	 */
	@RequestMapping(value = "/user_active/", method= RequestMethod.GET)
	public ResponseEntity<List<User>> listAllUsersActive(){
		
		List<User> users = userService.findAllUsersActive();
		
		if(users.isEmpty()){
			return new ResponseEntity<List<User>>(HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<List<User>>(users, HttpStatus.OK );
	}
	
	@RequestMapping(value = "/user/{id}", method= RequestMethod.GET, 
			produces= MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<User> getUser(@PathVariable("id")  long id){
		System.out.println("Fetching User with id " + id);
		User user = userService.findById(id);
		
		if(user == null){
			System.out.println("User with id" + id + "not found");
			return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
		}
		
		return new ResponseEntity<User>(user, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/user/", method = RequestMethod.POST)
	public ResponseEntity<Void> createUser(@RequestBody User user, UriComponentsBuilder ucBuilder){
		System.out.println("Creating User " + user.getUserName());
		
		if(userService.isUserExist(user)){
			System.out.println("A User with name " + user.getUserName() + " alredy exist");
			return new ResponseEntity<Void>(HttpStatus.CONFLICT);
		}
		
		userService.saveUser(user);
		
		HttpHeaders headers = new HttpHeaders();
		headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(user.getId()).toUri() );
		
		return new ResponseEntity<Void>(HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/user/{id}", method= RequestMethod.PUT)
	public ResponseEntity<User>  updateUser(@PathVariable("id") long id, @RequestBody User user){
		System.out.println("Updating User " + id);
		
		User currentUser = userService.findById(id);
		
		if(currentUser == null){
			System.out.println("User with id " + id + "not found");
			new ResponseEntity<Void>(HttpStatus.NOT_FOUND);
		}
		
		currentUser.setUserName(user.getUserName());
		currentUser.setLast_name(user.getLast_name());
		currentUser.setMiddle_name(user.getMiddle_name());
		currentUser.setDob(user.getDob());
		currentUser.setDoe(user.getDoe());
		currentUser.setAddress(user.getAddress());
		currentUser.setEmail(user.getEmail());
		currentUser.setStatus(user.getStatus());
		
		userService.updateUser(currentUser);
		
		return new ResponseEntity<User>(currentUser, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/user/{id}", method= RequestMethod.DELETE)
	public ResponseEntity<User> deleteUser(@PathVariable("id") long id){
		System.out.println("Fetching and Deleting User with id " + id);
		
		User user = userService.findById(id);
		
		if(user == null){
			System.out.println("Unable to delete. User with id " + id + " not found");
			new ResponseEntity<User>(HttpStatus.NOT_FOUND);
		}
		
		userService.deleteUserById(id);
		return new ResponseEntity<User>(HttpStatus.NO_CONTENT);
	}
	
	@RequestMapping(value = "/user/", method= RequestMethod.DELETE)
	public ResponseEntity<User> deleteAllUsers(){
		System.out.println("Deleting All Users");
		
		userService.deleteAllUsers();
		return new ResponseEntity<User>(HttpStatus.NO_CONTENT);
	}
	
	
}//End class
