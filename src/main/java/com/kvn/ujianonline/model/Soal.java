package com.kvn.ujianonline.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Soal {
	@Id
	@GeneratedValue
	private Long id_soal;
	
	@Column
	private int id_mapel;
	
	@Lob
	private String soal;
	
	@Column
	private String path_gmb;
	
	@Column
	private String jwb_A;
	
	@Column
	private String jwb_B;
	
	@Column
	private String jwb_C;
	
	@Column
	private String jwb_D;
	
	@Column
	private String jwb_E;
	
	@Column
	private String kunci;
	


	
	
	
	
	
	
//	public Soal(String soal, String pilihanA, String pilihanB, String pilihanC, 
//			String pilihanD, String pilihanE) {
//		this.soal = soal;
//		this.pilihanA = pilihanA;
//		this.pilihanB = pilihanB;
//		this.pilihanC = pilihanC;
//		this.pilihanD = pilihanD;
//		this.pilihanE = pilihanE;
//	}
//	public int getIdSoal() {
//		return idSoal;
//	}
//	public void setIdSoal(int idSoal) {
//		this.idSoal = idSoal;
//	}
//	public String getSoal() {
//		return soal;
//	}
//	public void setSoal(String soal) {
//		this.soal = soal;
//	}
//	public String getPilihanA() {
//		return pilihanA;
//	}
//	public void setPilihanA(String pilihanA) {
//		this.pilihanA = pilihanA;
//	}
//	public String getPilihanB() {
//		return pilihanB;
//	}
//	public void setPilihanB(String pilihanB) {
//		this.pilihanB = pilihanB;
//	}
//	public String getPilihanC() {
//		return pilihanC;
//	}
//	public void setPilihanC(String pilihanC) {
//		this.pilihanC = pilihanC;
//	}
//	public String getPilihanD() {
//		return pilihanD;
//	}
//	public void setPilihanD(String pilihanD) {
//		this.pilihanD = pilihanD;
//	}
//	public String getPilihanE() {
//		return pilihanE;
//	}
//	public void setPilihanE(String pilihanE) {
//		this.pilihanE = pilihanE;
//	}
}