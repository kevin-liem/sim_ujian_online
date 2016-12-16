package com.kvn.ujianonline.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kvn.ujianonline.model.Soal;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface DaoSoal extends JpaRepository<Soal, Long>{
    @Query(value = "SELECT * FROM soal WHERE id_mapel = ?1", nativeQuery = true)
	public List<Soal> findById_mapel(Integer id_mapel);
}