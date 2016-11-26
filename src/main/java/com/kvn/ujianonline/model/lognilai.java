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
public class lognilai {
	@Id
	@GeneratedValue
	private Long id_log;
	
	@Column
	private int id_mapel;
	
	@Column
	private int id_user;
	
	@Column
	private int nilai;
}