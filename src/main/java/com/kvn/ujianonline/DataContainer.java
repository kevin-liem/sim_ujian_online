package com.kvn.ujianonline;

import com.kvn.ujianonline.dao.DaoSiswa;
import com.kvn.ujianonline.dao.DaoSoal;
import com.kvn.ujianonline.dao.DaoUserAccount;

public class DataContainer {
	private static DataContainer instance = null;
	private DaoSiswa daoSiswa;
	private DaoUserAccount daoUserAccount;
	private DaoSoal daoSoal;
	
	public DataContainer(){
		daoSiswa = new DaoSiswa();
		daoUserAccount = new DaoUserAccount();
//		daoSoal = new DaoSoal();
	}
	
	public static DataContainer getInstance(){
		if(instance == null){
			instance = new DataContainer();
		}
		return instance;
	}

	public DaoSiswa getDaoSiswa() {
		return daoSiswa;
	}

	public DaoUserAccount getDaoUserAccount() {
		return daoUserAccount;
	}

	public DaoSoal getDaoSoal() {
		return daoSoal;
	}
	
}