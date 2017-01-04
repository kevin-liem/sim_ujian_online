package com.kvn.ujianonline.controller.admin;

import com.kvn.ujianonline.dao.DaoUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.kvn.ujianonline.model.User;

import java.util.List;

/**
 * Created by Novan on 19/12/2016.
 */
@Controller
public class ControllerDataSiswa {

    @Autowired
    private DaoUser daoUser;

    @RequestMapping(value="/admin/data-siswa", method=RequestMethod.GET)
    public String getAll(Model model){
        List<User> userList = daoUser.getAll();
        model.addAttribute("siswalist",userList);
        return "/adminview/datasiswa";
    }

    @RequestMapping(value = "/admin/data-siswa/edit/{nisn}", method = RequestMethod.GET)
    public String edit(
            @PathVariable String nisn,
            @RequestParam("username") String username,
            @RequestParam("nisn") String updatenisn,
            @RequestParam("jurusan") String jurusan,
            @RequestParam("password") String password,
            Model model
            ){
        User oldUser = daoUser.findByNisn(nisn);
        oldUser.setUsername(username);
        oldUser.setNisn(updatenisn);
        oldUser.setJurusan(jurusan);
        oldUser.setPassword(password);
        daoUser.save(oldUser);
        return "redirect:/admin/data-siswa";
    }

    @RequestMapping(value = "/admin/data-siswa/save")
    public String submit(
            @RequestParam("username") String username,
            @RequestParam("nisn") String nisn,
            @RequestParam("jurusan") String jurusan,
            @RequestParam("password") String password
            ){
        User newuser = new User();
        newuser.setUsername(username);
        newuser.setNisn(nisn);
        newuser.setJurusan(jurusan);
        newuser.setPassword(password);
        newuser.setStatus_siswa(1);
        newuser.setStatus_ujian(0);
        daoUser.save(newuser);
        return "redirect:/admin/data-siswa";
    }

    @RequestMapping(value = "/admin/data-siswa/delete/{id_user}", method = RequestMethod.POST)
    public String delete(@PathVariable String id_user){
        daoUser.delete(Long.parseLong(id_user));
        return "redirect:/admin/data-siswa";
    }
}
