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
	private long jwb_A;
	
	@Column
	private long jwb_B;
	
	@Column
	private long jwb_C;
	
	@Column
	private long jwb_D;
	
	@Column
	private long jwb_E;
	
	@Column
	private int kunci;
}