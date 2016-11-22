package com.kvn.ujianonline.dao;

import java.util.ArrayList;
import java.util.List;

import com.kvn.ujianonline.model.Siswa;

public class DaoSiswa {
	private List<Siswa> listSiswa = new ArrayList<Siswa>();
	
	public DaoSiswa(){
		
	}
	
	public void save(Siswa siswa){
		siswa.setNidn("" + (listSiswa.size()+1));
		listSiswa.add(siswa);
	}
	
	public List<Siswa> getAll(){
		return listSiswa;
	}
	
	public Siswa getById(String siswaNidn){
		for (Siswa siswa : listSiswa) {
			if(siswaNidn.equals(siswa.getNidn())){
				return siswa;
			}
		}
		return null;
	}
}