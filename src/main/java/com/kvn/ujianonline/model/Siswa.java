package com.kvn.ujianonline.model;

public class Siswa {
	private String nidn;
	private String nama;
	private Nilai nilai;

	public Siswa(String nama) {
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

	public Nilai getNilai() {
		return nilai;
	}

	public void setNilai(Nilai nilai) {
		this.nilai = nilai;
	}
}