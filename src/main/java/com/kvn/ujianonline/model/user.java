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
public class User {
    @Id
    @GeneratedValue
    private Long id_user;

    @Column
    private String username;

    @Column
    private String password;

    @Column
    private String nisn;

    @Column
    private int status_siswa;

    @Column
    private int hak_akses;

    @Column
    private String jurusan;

    @Column
    private int status_ujian;
}