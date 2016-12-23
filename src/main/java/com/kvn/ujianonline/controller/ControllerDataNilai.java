package com.kvn.ujianonline.controller;

import com.kvn.ujianonline.dao.DaoLogNilai;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kvn.ujianonline.model.Lognilai;
import java.util.List;

/**
 * Created by Novan on 19/12/2016.
 */
@Controller
public class ControllerDataNilai {

    @Autowired
    private DaoLogNilai daoNilai;

    @RequestMapping(value="/admin/data-nilai", method= RequestMethod.GET)
    public String getAll(Model model){
        List<Lognilai> nilailist = daoNilai.findAll();
        model.addAttribute("nilailist",nilailist);
        return "/adminview/datanilai";
    }
}
