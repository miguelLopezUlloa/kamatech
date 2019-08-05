package com.mikauran.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.mikauran.model.User;

public interface UserRepository extends CrudRepository<User, Long> {
	
	public User findByUserName(String name);
	
	@Query("SELECT u FROM User u WHERE u.status ='ACTIVE'")
	public List<User> findAllUsersActive();
	
	@Modifying
	@Query("UPDATE User u SET u.status=?1 WHERE id=?2")
	public void updateStatus(long id);
	
	@Modifying
	@Query("UPDATE User u SET u.status=?1 WHERE id=?2")
	public void updateByParams(String status, long id);

}
