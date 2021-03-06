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
	private String jwb_a;
	
	@Column
	private String jwb_b;
	
	@Column
	private String jwb_c;
	
	@Column
	private String jwb_d;
	
	@Column
	private String jwb_e;
	
	@Column
	private int kunci;
	
	@Column
	private String path_gmb;
}