package kr.ac.kopo.perfume.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.kopo.perfume.model.Perfume;
import kr.ac.kopo.perfume.service.PerfumeService;

@Controller
@RequestMapping(value="/")
public class PerfumeController {
	
	@Autowired
	PerfumeService service;
	
	@RequestMapping(value="/man", method=RequestMethod.POST)
	public String add(Model model, Perfume item, HttpSession session) {
		item.setId((String) session.getAttribute("user"));
		
		service.add(item);
		
		model.addAttribute("list", item);
		
		return "man";
	}
	
	@RequestMapping(value="/woman", method=RequestMethod.POST)
	public String add2(Model model, Perfume item, HttpSession session) {
		item.setId((String) session.getAttribute("user"));
		service.add(item);
		
		model.addAttribute("list", item);
		
		return "woman";
	}
}
