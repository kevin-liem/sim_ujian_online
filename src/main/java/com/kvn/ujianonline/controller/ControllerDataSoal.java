package com.kvn.ujianonline.controller;

import com.kvn.ujianonline.dao.DaoSoal;
import com.kvn.ujianonline.model.Soal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

}
