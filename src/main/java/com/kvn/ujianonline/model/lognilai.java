package com.kvn.ujianonline.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Lognilai {
	@Id
	@GeneratedValue
	private Long id_log;

	@Column
	private int id_mapel;

	@Column
	private String nisn;
	
	@Column
	private int nilai;

	@Column
	private String username;
}