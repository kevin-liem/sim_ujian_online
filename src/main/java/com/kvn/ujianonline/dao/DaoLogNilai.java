package com.kvn.ujianonline.dao;

import com.kvn.ujianonline.model.Lognilai;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface DaoLogNilai extends JpaRepository<Lognilai, Long>{
    @Query(value = "SELECT * FROM lognilai WHERE nisn =?0", nativeQuery = true)
    List<Lognilai> getAll();
}