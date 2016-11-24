package com.kvn.ujianonline.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kvn.ujianonline.DataContainer;
import com.kvn.ujianonline.dao.DaoSoal;
import com.kvn.ujianonline.model.Soal;
import com.kvn.ujianonline.model.UserAccount;

import utility.TimeInfo;

@Controller
public class ControllerSoal {
	@Autowired
	DaoSoal daoSoal;
	
	
	@GetMapping(value="/")
	public String Login(Model model){
		return "/userview/login";
	}
	
	@PostMapping(value="/")
	public String Login(@RequestParam("username") String username,
			@RequestParam("password") String password,
			HttpServletRequest request,
			Model model){
		UserAccount user = DataContainer.getInstance().getDaoUserAccount().getByUsername(username);
		// Check if there is desired user
		if( user != null ){
			// Check if username match the password
			if(user.getPassword().equals(password)){
				// Save username and password to session
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				
				model.addAttribute("nama", user.getSiswa().getNama());
				model.addAttribute("nidn", user.getSiswa().getNidn());
				model.addAttribute("currenttime", TimeInfo.getCurrentTimeWithOffset());
				return "/userview/pagewaiting";
			}
		}
		return "/userview/pagelogin";
	}
	
	@RequestMapping(value="/userview/soal")
	public String openSoal(HttpServletRequest request,
			Model model){
		HttpSession session = request.getSession();
		String nidn = (String)session.getAttribute("nidn");
		model.addAttribute("nidn", nidn);
//		model.addAttribute("soal1", DataContainer.getInstance().getDaoSoal().getById(1));
		return "/userview/pagesoal";
	}
	
	@RequestMapping(value="soaljson/{no_soal}")
	@ResponseBody
	public Soal getSoal(@PathVariable Long no_soal){
//		return DataContainer.getInstance().getDaoSoal().getById(noSoal);
		Soal soal = daoSoal.findOne(no_soal);
		return soal;
	}
}