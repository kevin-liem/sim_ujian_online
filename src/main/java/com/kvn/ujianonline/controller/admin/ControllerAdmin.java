package com.kvn.ujianonline.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;


/**
 * Created by Novan on 02/12/2016.
 */
@Controller
public class ControllerAdmin {
    @RequestMapping(value = "/admin")
    public String overview() {
        return "/adminview/overview";
    }
}