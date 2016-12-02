package com.kvn.ujianonline.model;

public class siswa {
	private String nidn;
	private String nama;
	private com.kvn.ujianonline.model.nilai nilai;

	public siswa(String nama) {
//		super();
		this.nama = nama;
	}
	public String getNidn() {
		return nidn;
	}
	public void setNidn(String nidn) {
		this.nidn = nidn;
	}
	public String getNama() {
		return nama;
	}
	public void setNama(String nama) {
		this.nama = nama;
	}

	public com.kvn.ujianonline.model.nilai getNilai() {
		return nilai;
	}

	public void setNilai(com.kvn.ujianonline.model.nilai nilai) {
		this.nilai = nilai;
	}
}