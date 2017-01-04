package com.kvn.ujianonline.controller.admin;

import com.kvn.ujianonline.dao.DaoUser;
import com.kvn.ujianonline.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by Novan on 04/01/2017.
 */
@Controller
public class ControllerRegulasi {

    @Autowired
    private DaoUser daoUser;

    @RequestMapping(value = "/admin/regulasi", method = RequestMethod.GET)
    public String showRegulasi(Model model){
        List<User> regulasiList = daoUser.findAll();
        model.addAttribute("regulasiList", regulasiList);
        return "/adminview/regulasi";
    }
}
