package com.kvn.ujianonline.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;

import com.kvn.ujianonline.dao.DaoLogNilai;
import com.kvn.ujianonline.dao.DaoUser;
import com.kvn.ujianonline.model.Lognilai;
import com.kvn.ujianonline.model.User;
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

import java.util.*;

@Controller
public class ControllerSoal {
	@Autowired
	DaoSoal daoSoal;
	
	@Autowired
	DaoUser daoUser;

	@Autowired
	DaoLogNilai daoLogNilai;

	@GetMapping(value="/")
	public String Login(Model model){
		return "/userview/login";
	}
	
	@PostMapping(value="/")
	public String Login(@RequestParam("nisn") String nisn,
			@RequestParam("password") String password,
			HttpServletRequest request,
			Model model){
		User user = daoUser.findByNisn(nisn);
//		UserAccount user = DataContainer.getInstance().getDaoUserAccount().getByUsername(username);
		// Check if there is desired User
		if( user != null ){
			// Check if username match the password
			if(user.getPassword().equals(password)){
				// Save username and password to session
				HttpSession session = request.getSession();
				session.setAttribute("username", nisn);
				session.setAttribute("password", password);
				session.setAttribute("nama", user.getUsername());
				session.setAttribute("nisn", user.getNisn());
				
				model.addAttribute("nama", session.getAttribute("nama"));
				model.addAttribute("nisn", session.getAttribute("nisn"));
				model.addAttribute("currenttime", TimeInfo.getCurrentTimeWithOffset());
				return "/userview/pagewaiting";
			}
		}
		return "/userview/login";
	}
	
	@RequestMapping(value="/userview/soal")
	public String openSoal(HttpServletRequest request,
			Model model){
		HttpSession session = request.getSession();
		String nama = (String)session.getAttribute("nama");
		String nisn = (String) session.getAttribute("nisn");
		model.addAttribute("nama", nama);
		model.addAttribute("nisn", nisn);

		Integer nisnInteger = new Integer(nisn);
		int indexTipeSoal = nisnInteger % 5;	// 0=0; 1=1; 2=2; 3=3; 4=4; 5=0; 6=1; 7=2; 8=3; 9=4;
		int idMapel = 5;
		List<Soal> listSoal = daoSoal.findById_mapel(idMapel);

		List<Soal> randomListSoal = new LinkedList<Soal>();
		while (!listSoal.isEmpty()){
			if (listSoal.size() > indexTipeSoal){
				randomListSoal.add(listSoal.get(indexTipeSoal));
				listSoal.remove(indexTipeSoal);
			}
			else {
				indexTipeSoal--;
			}
		}

		model.addAttribute("idMapel", idMapel);
		model.addAttribute("tipeSoal", indexTipeSoal);
		model.addAttribute("listSoal", randomListSoal);

		session.setAttribute("idMapel", idMapel);
		return "/userview/soal";
	}

	@RequestMapping(value = "/userview/soal/simpan/{nisn}", method = RequestMethod.POST)
	public String submit (
			@PathVariable String nisn,
			@RequestParam("nilai") int nilai,
			@RequestParam("mapel") int id_mapel,
			HttpServletRequest request,
			Model model
	){
		model.addAttribute("idMapel", id_mapel);
		model.addAttribute("nilai", nilai);
		Lognilai oldNilai = daoLogNilai.findByNisn(nisn);
		if(id_mapel == 1){
			oldNilai.setBind(nilai);
		}else if(id_mapel == 2){
			oldNilai.setBing(nilai);
		}else if(id_mapel == 3){
			oldNilai.setMat(nilai);
		}else if(id_mapel == 4){
			oldNilai.setBio(nilai);
		}else if(id_mapel == 5){
			oldNilai.setFis(nilai);
		}else if(id_mapel == 6){
			oldNilai.setKim(nilai);
		}else if(id_mapel == 7){
			oldNilai.setSos(nilai);
		}else if(id_mapel == 8){
			oldNilai.setGeo(nilai);
		}else if(id_mapel == 9){
			oldNilai.setEko(nilai);
		}
		daoLogNilai.save(oldNilai);
		return "/userview/hasil";
	}
}