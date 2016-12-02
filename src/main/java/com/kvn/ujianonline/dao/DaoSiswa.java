package com.kvn.ujianonline.dao;

import java.util.ArrayList;
import java.util.List;

import com.kvn.ujianonline.model.siswa;

public class DaoSiswa {
	private List<siswa> listSiswa = new ArrayList<siswa>();
	
	public DaoSiswa(){
		
	}
	
	public void save(siswa siswa){
		siswa.setNidn("" + (listSiswa.size()+1));
		listSiswa.add(siswa);
	}
	
	public List<siswa> getAll(){
		return listSiswa;
	}
	
	public siswa getById(String siswaNidn){
		for (com.kvn.ujianonline.model.siswa siswa : listSiswa) {
			if(siswaNidn.equals(siswa.getNidn())){
				return siswa;
			}
		}
		return null;
	}
}