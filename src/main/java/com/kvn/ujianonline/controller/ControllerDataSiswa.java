package com.kvn.ujianonline.controller;

import com.kvn.ujianonline.dao.DaoUser;
import com.kvn.ujianonline.model.Soal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kvn.ujianonline.model.User;

import java.util.List;

/**
 * Created by Novan on 19/12/2016.
 */
@Service
public class ControllerDataSiswa {

    @Autowired
    private DaoUser daoUser;

    @RequestMapping(value="/admin/data-siswa", method=RequestMethod.GET)
    public String getAll(Model model){
        List<User> userList = daoUser.findAll();
        model.addAttribute("siswalis",userList);
        return "/adminview/datasiswa";
    }

    @RequestMapping(value = "/admin/data-siswa/input", method = RequestMethod.GET)
    public String create(Model model){
        model.addAttribute("siswainput", new User());
        return "/adminview/datasiswa";
    }

    @RequestMapping(value = "/admin/data-siswa/edit/{nisn}", method = RequestMethod.GET)
    public String edit(@PathVariable String nisn, Model model){
        User user = daoUser.findByNisn(Integer.parseInt(nisn));
        model.addAttribute("siswaedit", user);
        return "/adminview/datasiswa";
    }

    @RequestMapping(value = "/admin/data-siswa/save", method = RequestMethod.POST)
    public String submit(@ModelAttribute User user){
        User oldUser = daoUser.findOne(user.getId_user());
        if(oldUser != null){
            oldUser.setUsername(user.getUsername());
            daoUser.save(oldUser);
            oldUser.setNisn(user.getNisn());
            daoUser.save(oldUser);
            oldUser.setJurusan(user.getJurusan());
            daoUser.save(oldUser);
        }
        daoUser.save(oldUser);
        return "redirect:/admin/data-siswa";
    }

    @RequestMapping(value = "/admin/data-siswa/delete/{id_user}", method = RequestMethod.POST)
    public String delete(@PathVariable String id_user){
        daoUser.delete(Long.parseLong(id_user));
        return "redirect:/admin/data-siswa";
    }
}
