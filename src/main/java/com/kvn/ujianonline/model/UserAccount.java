package com.kvn.ujianonline.model;

public class UserAccount {
	private int id;
	private String username;
	private String password;
	private com.kvn.ujianonline.model.siswa siswa;
	
	public UserAccount(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public com.kvn.ujianonline.model.siswa getSiswa() {
		return siswa;
	}

	public void setSiswa(com.kvn.ujianonline.model.siswa siswa) {
		this.siswa = siswa;
	}
}