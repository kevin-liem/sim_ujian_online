package com.kvn.ujianonline.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kvn.ujianonline.service.ServiceDataSiswa;
import com.kvn.ujianonline.model.User;

/**
 * Created by Novan on 19/12/2016.
 */
@Service
public class ControllerDataSiswa {
    @Autowired
    private ServiceDataSiswa servicedatasiswa;

    @RequestMapping(value="/admin/data-siswa", method=RequestMethod.GET)
    public String getAll(Model model){
        model.addAttribute("siswamodel", servicedatasiswa.getAll());
        return "/adminview/datasiswa";
    }

    @RequestMapping(value = "/admin/data-siswa/input", method = RequestMethod.GET)
    public String create(Model model){
        model.addAttribute("siswa", new User());
        return "/adminview/datasiswa";
    }

    @RequestMapping(value = "/admin/data-siswa/edit/{id_user}", method = RequestMethod.GET)
    public String edit(@PathVariable String id_user, Model model){
        User user = servicedatasiswa.getById(Long.parseLong(id_user));
        model.addAttribute("bidang", user);
        return "/adminview/datasiswa";
    }

    @RequestMapping(value = "/admin/data-siswa/save", method = RequestMethod.POST)
    public String submit(@ModelAttribute User user){
        if(servicedatasiswa.update(user)){}
        else{servicedatasiswa.save(user);}
        return "redirect:/admin/data-siswa";
    }

    @RequestMapping(value = "/admin/data-siswa/delete/{id_user}", method = RequestMethod.POST)
    public String delete(@PathVariable String id_user){
        servicedatasiswa.delete(Long.parseLong(id_user));
        return "redirect:/admin/data-siswa";
    }
}
