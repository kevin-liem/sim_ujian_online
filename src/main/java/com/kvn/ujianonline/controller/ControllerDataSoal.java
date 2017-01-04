package com.kvn.ujianonline.controller;

import com.kvn.ujianonline.dao.DaoSoal;
import com.kvn.ujianonline.model.Soal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by Novan on 21/12/2016.
 */
@Controller
public class ControllerDataSoal {

    @Autowired
    private DaoSoal daoSoal;

    @RequestMapping(value = "/admin/soal", method = RequestMethod.GET)
    public String showSoal(Model model){
        List<Soal> soalList = daoSoal.findAll();
        model.addAttribute("soalList", soalList);
        return "/adminview/soal";
    }

    @RequestMapping(value = "/admin/data-soal/save")
    public  String Submit(
            @RequestParam("id_mapel") int id_mapel,
            @RequestParam("soal") String soal,
            @RequestParam("pil_a") String pil_a,
            @RequestParam("pil_b") String pil_b,
            @RequestParam("pil_c") String pil_c,
            @RequestParam("pil_d") String pil_d,
            @RequestParam("pil_e") String pil_e,
            @RequestParam("kunci") int kunci,
            @RequestParam("gmb") String gmb
        ){
        Soal newsoal = new Soal();
        newsoal.setId_mapel(id_mapel);
        newsoal.setSoal(soal);
        newsoal.setJwb_a(pil_a);
        newsoal.setJwb_b(pil_b);
        newsoal.setJwb_c(pil_c);
        newsoal.setJwb_d(pil_d);
        newsoal.setJwb_e(pil_e);
        newsoal.setKunci(kunci);
        newsoal.setPath_gmb(gmb);
        daoSoal.save(newsoal);
        return "redirect:/admin/soal";
    }

    @RequestMapping(value = "/admin/data-soal/edit/{id_soal}", method = RequestMethod.GET)
    public String edit(
            @PathVariable Long id_soal,
            @RequestParam("id_mapel") int id_mapel,
            @RequestParam("soal") String soal,
            @RequestParam("pil_a") String pil_a,
            @RequestParam("pil_b") String pil_b,
            @RequestParam("pil_c") String pil_c,
            @RequestParam("pil_d") String pil_d,
            @RequestParam("pil_e") String pil_e,
            @RequestParam("kunci") int kunci,
            @RequestParam("gmb") String gmb
    ){
        Soal oldSoal = daoSoal.findOne(id_soal);
        oldSoal.setId_mapel(id_mapel);
        oldSoal.setSoal(soal);
        oldSoal.setJwb_a(pil_a);
        oldSoal.setJwb_b(pil_b);
        oldSoal.setJwb_c(pil_c);
        oldSoal.setJwb_d(pil_d);
        oldSoal.setJwb_e(pil_e);
        oldSoal.setKunci(kunci);
        oldSoal.setPath_gmb(gmb);
        daoSoal.save(oldSoal);
        return "redirect:/admin/soal";
    }

    @RequestMapping(value = "/admin/data-soal/delete/{id_soal}", method = RequestMethod.POST)
    public String delete(@PathVariable String id_soal){
        daoSoal.delete(Long.parseLong(id_soal));
        return "redirect:/admin/soal";
    }
}
