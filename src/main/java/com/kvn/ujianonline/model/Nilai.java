package com.kvn.ujianonline.model;

public class Nilai {
	private int bhsIndonesia;
	private int bhsInggris;
	private int matematika;
	
	private int jmlPelajaran = 3;
	
	public Nilai() {
		
	}

	public Nilai(int bhsIndonesia, int bhsInggris, int matematika) {
		super();
		this.bhsIndonesia = bhsIndonesia;
		this.bhsInggris = bhsInggris;
		this.matematika = matematika;
	}
	
	public int getBhsIndonesia() {
		return bhsIndonesia;
	}
	public void setBhsIndonesia(int bhsIndonesia) {
		this.bhsIndonesia = bhsIndonesia;
	}
	public int getBhsInggris() {
		return bhsInggris;
	}
	public void setBhsInggris(int bhsInggris) {
		this.bhsInggris = bhsInggris;
	}
	public int getMatematika() {
		return matematika;
	}
	public void setMatematika(int matematika) {
		this.matematika = matematika;
	}
	
	// Derived value
	public int getDanem() {
		int danem = (getBhsIndonesia() + getBhsInggris() + getMatematika()) / jmlPelajaran;
		return danem;
	}
}