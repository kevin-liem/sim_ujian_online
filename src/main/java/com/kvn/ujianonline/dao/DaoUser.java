package com.kvn.ujianonline.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kvn.ujianonline.model.user;

public interface DaoUser extends JpaRepository<user, Long>{
	
}