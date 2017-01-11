package com.kvn.ujianonline.dao;

import com.kvn.ujianonline.model.Lognilai;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.List;


public interface DaoLogNilai extends JpaRepository<Lognilai, Long>{
    @Query(value = "SELECT * FROM lognilai WHERE nisn =?0", nativeQuery = true)
    List<Lognilai> getAll();

    public Lognilai findByNisn(String nisn);

    @Transactional
    Long deleteByNisn(String nisn);
}