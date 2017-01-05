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
	private String nisn;

	@Column
	private String username;

	@Column
	private int bind;

	@Column
	private int bing;

	@Column
	private int mat;

	@Column
	private int bio;

	@Column
	private int fis;

	@Column
	private int kim;

	@Column
	private int sos;

	@Column
	private int geo;

	@Column
	private int eko;
}