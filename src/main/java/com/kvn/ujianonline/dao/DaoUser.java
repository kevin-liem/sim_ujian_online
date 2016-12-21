package com.kvn.ujianonline.dao;

import com.kvn.ujianonline.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface DaoUser extends JpaRepository<User, Long>{
	public User findByUsername(String username);

	public User findByNisn(String nisn);

	@Query(value = "SELECT * FROM user WHERE hak_akses =0", nativeQuery = true)
	List<User> getAll();
}