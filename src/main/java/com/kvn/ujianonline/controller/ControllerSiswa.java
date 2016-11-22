package com.kvn.ujianonline.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kvn.ujianonline.DataContainer;

@Controller
public class ControllerSiswa {
	@RequestMapping(value="/adminview/listsiswa")
	public String listSiswa(Model model){
		model.addAttribute("listsiswa", 
				DataContainer.getInstance().getDaoSiswa().getAll());
		return "/adminview/siswa-list";
	}
}