package com.kvn.ujianonline.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.sql.Date;
import java.sql.Time;

/**
 * Created by Novan on 02/12/2016.
 */
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class jadwal {
    @Id
    @GeneratedValue
    private long id;

    @Column
    private Date tanggal;

    @Column
    private Time jam;

    @Column
    private int id_mapel;


}
