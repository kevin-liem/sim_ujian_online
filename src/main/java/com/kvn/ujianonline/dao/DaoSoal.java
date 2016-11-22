package com.kvn.ujianonline.dao;

import java.util.ArrayList;
import java.util.List;

import com.kvn.ujianonline.model.Soal;

public class DaoSoal {
	private List<Soal> listSoal = new ArrayList<Soal>();
	
	public DaoSoal(){
		
	}
	
	public void save(Soal soal){
		soal.setIdSoal(listSoal.size()+1);
		listSoal.add(soal);
	}
	
	public List<Soal> getAll(){
		return listSoal;
	}
	
	public Soal getById(int idSoal){
		for (Soal soal : listSoal) {
			if(idSoal == soal.getIdSoal()){
				return soal;
			}
		}
		return null;
	}
}