package com.kvn.ujianonline.controller.admin;

import com.kvn.ujianonline.dao.DaoJadwal;
import com.kvn.ujianonline.model.Jadwal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Time;
import java.sql.Date;
import java.util.List;

/**
 * Created by Novan on 05/01/2017.
 */
@Controller
public class ControllerJadwal {

    @Autowired
    private DaoJadwal daoJadwal;

    @RequestMapping(value = "/admin/jadwal")
    public String show(Model model){
        List<Jadwal> jadwalList = daoJadwal.findAll();
        model.addAttribute("jadwalList", jadwalList);
        return "/adminview/jadwalujian";
    }

    @RequestMapping(value = "/admin/jadwal/save")
    public String submit(
            @RequestParam("tanggal") Date tanggal,
            @RequestParam("waktu") Time waktu,
            @RequestParam("jurusan") int mapel
    ){
        Jadwal newjadwal = new Jadwal();
        newjadwal.setId_mapel(mapel);
        newjadwal.setTanggal(tanggal);
        newjadwal.setWaktu(waktu);
        daoJadwal.save(newjadwal);
        return "redirect:/admin/jadwal";
    }
}
