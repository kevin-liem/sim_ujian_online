package com.kvn.ujianonline.model;

public class Soal {
	private int idSoal;
	private String soal;
	private String pilihanA;
	private String pilihanB;
	private String pilihanC;
	private String pilihanD;
	private String pilihanE;
	
	public Soal(String soal, String pilihanA, String pilihanB, String pilihanC, 
			String pilihanD, String pilihanE) {
//		super();
		this.soal = soal;
		this.pilihanA = pilihanA;
		this.pilihanB = pilihanB;
		this.pilihanC = pilihanC;
		this.pilihanD = pilihanD;
		this.pilihanE = pilihanE;
	}
	public int getIdSoal() {
		return idSoal;
	}
	public void setIdSoal(int idSoal) {
		this.idSoal = idSoal;
	}
	public String getSoal() {
		return soal;
	}
	public void setSoal(String soal) {
		this.soal = soal;
	}
	public String getPilihanA() {
		return pilihanA;
	}
	public void setPilihanA(String pilihanA) {
		this.pilihanA = pilihanA;
	}
	public String getPilihanB() {
		return pilihanB;
	}
	public void setPilihanB(String pilihanB) {
		this.pilihanB = pilihanB;
	}
	public String getPilihanC() {
		return pilihanC;
	}
	public void setPilihanC(String pilihanC) {
		this.pilihanC = pilihanC;
	}
	public String getPilihanD() {
		return pilihanD;
	}
	public void setPilihanD(String pilihanD) {
		this.pilihanD = pilihanD;
	}
	public String getPilihanE() {
		return pilihanE;
	}
	public void setPilihanE(String pilihanE) {
		this.pilihanE = pilihanE;
	}
}