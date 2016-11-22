package com.kvn.ujianonline;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.kvn.ujianonline.model.Nilai;
import com.kvn.ujianonline.model.Siswa;
import com.kvn.ujianonline.model.Soal;
import com.kvn.ujianonline.model.UserAccount;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
		DataContainer.getInstance().getDaoSiswa().save(new Siswa("Kevin"));
		DataContainer.getInstance().getDaoSiswa().save(new Siswa("Novi"));
		DataContainer.getInstance().getDaoSiswa().getById("1").setNilai(new Nilai(56, 44, 90));
		DataContainer.getInstance().getDaoSiswa().getById("2").setNilai(new Nilai(100, 34, 80));
		DataContainer.getInstance().getDaoUserAccount().save(new UserAccount("kevinandrean", "kevinandrean"));
		DataContainer.getInstance().getDaoUserAccount().save(new UserAccount("n", "n"));
		DataContainer.getInstance().getDaoUserAccount().getById(1).setSiswa(DataContainer.getInstance().getDaoSiswa().getById("1"));
		DataContainer.getInstance().getDaoUserAccount().getById(2).setSiswa(DataContainer.getInstance().getDaoSiswa().getById("2"));
		
		DataContainer.getInstance().getDaoSoal().save(new Soal(
				"Di manakah ibunda raja Michael berada ketika raja Michael sedang berburu domba di padang belantara emoji?", 
				"Kamar mandi", 
				"Atas pagar", 
				"Belakang pintu", 
				"Bawah meja", 
				"Atas pohon"));
		DataContainer.getInstance().getDaoSoal().save(new Soal(
				"Mengapa paramita tertimpa permen coklat padahal sedang hujan nasi?", 
				"Karena coklat terbuat dari nasi", 
				"Karena nasi berevolusi menjadi coklat", 
				"Karena terjadi interaksi antara nasi dan ladang gandum", 
				"Karena koko kranch sedang shoting film", 
				"Karena paramita sedang bermimpi coklat"));
	}
}