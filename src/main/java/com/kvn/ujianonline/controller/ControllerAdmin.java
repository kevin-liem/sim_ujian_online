package com.kvn.ujianonline.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;


/**
 * Created by Novan on 02/12/2016.
 */
@Controller
public class ControllerAdmin {
    @RequestMapping(value="/admin")
    public String overview(){
        return "/adminview/overview";
    }

//  controller siswa
    @RequestMapping(value="/admin/data-siswa")
    public String dataSiswa(){

        return "/adminview/datasiswa";
    }

    @RequestMapping(value="/admin/data-nilai")
    public String dataNilai(){
        return "/adminview/datanilai";
    }

    @RequestMapping(value="/admin/soal")
    public String soal(){
        return "/adminview/soal";
    }

    @RequestMapping(value="/admin/regulasi")
    public String regulasi(){
        return "/adminview/regulasi";
    }

    @RequestMapping(value="/admin/jadwal")
    public String jadwal(){
        return "/adminview/jadwalujian";
    }
}
