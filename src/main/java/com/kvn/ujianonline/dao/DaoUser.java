package com.kvn.ujianonline.dao;

import com.kvn.ujianonline.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DaoUser extends JpaRepository<User, Long>{
	public User findByUsername(String username);

	public User findByNisn(Integer nisn);
}