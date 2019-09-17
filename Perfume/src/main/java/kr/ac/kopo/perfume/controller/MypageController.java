package kr.ac.kopo.perfume.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.perfume.model.Mypage;
import kr.ac.kopo.perfume.model.Review;
import kr.ac.kopo.perfume.service.MypageService;

import kr.ac.kopo.perfume.util.Pager2;

@Controller
public class MypageController {
	final String uploadpath = "d://upload/";
	
	@Autowired
	MypageService service;
	
	@RequestMapping(value="/mypage")
	String list(Model model, Pager2 pager, HttpSession session, String count) {
		String id = (String) session.getAttribute("user");
		List<Mypage> list = service.list(pager,id);
		
		model.addAttribute("list", list);
		
		int percount = service.percount(count,id);
		model.addAttribute("percount", percount);
		
		int rvcount = service.rvcount(count,id);
		model.addAttribute("rvcount", rvcount);
		
		return "mypage";
	}
	
	@RequestMapping(value="/write")
	String add(Model model, String pNum) {
		Mypage write = service.getCs(pNum);
		
		model.addAttribute("write", write);
		
		return "write";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	String add(Review item, HttpSession session) {
		
		item.setId((String) session.getAttribute("user"));
		
		if (item.getAttach() != null) {
			String filename = item.getAttach().getOriginalFilename();

			try {
				item.getAttach().transferTo(new File(uploadpath + filename));

				item.setFilename(filename);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		service.add(item);
		
		return "redirect:review";
	}


	
//	@RequestMapping(value="/mypage")
//	String view(Model model, String id, HttpSession session) {
//		Mypage mypage = service.getId(id);
//		mypage.setId((String) session.getAttribute("user"));
//		model.addAttribute("mypage", mypage);
//		
//		return "mypage";
//	}

}
