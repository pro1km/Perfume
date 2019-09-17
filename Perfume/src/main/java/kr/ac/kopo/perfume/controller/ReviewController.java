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

import kr.ac.kopo.perfume.model.Review;
import kr.ac.kopo.perfume.service.ReviewService;
import kr.ac.kopo.perfume.util.Pager;

@Controller
@RequestMapping(value="/")
public class ReviewController {
	final String path = "review/";
	final String uploadpath = "d://upload/";
	
	@Autowired
	ReviewService service;
	
	
	@RequestMapping(value="/review")
	String list(Model model, Pager pager) {
		List<Review> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return "review";
	}
	
//	@RequestMapping(value="/write")
//	String add() {
//		return "write";
//	}
//	
//	@RequestMapping(value="/write", method=RequestMethod.POST)
//	String add(Review item, HttpSession session) {
//		
//		item.setId((String) session.getAttribute("user"));
//		
//		if (item.getAttach() != null) {
//			String filename = item.getAttach().getOriginalFilename();
//
//			try {
//				item.getAttach().transferTo(new File(uploadpath + filename));
//
//				item.setFilename(filename);
//			} catch (IllegalStateException e) {
//				e.printStackTrace();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//		}
//		
//		service.add(item);
//		
//		return "redirect:review";
//	}
	
	@RequestMapping(value="/delete")
	String delete(int rNum) {
		service.delete(rNum);
		
		return "redirect:review";
	}
	
	@RequestMapping(value="/update")
	String update(int rNum, Model model) {
		Review item = service.getNum(rNum);
		
		model.addAttribute("item", item);
		
		return "update";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	String update(Review item) {
		
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
		
		service.update(item);
		
		return "redirect:review";
	}
	
	@RequestMapping(value="/view")
	String view(Model model, int rNum) {
		Review view = service.getNum(rNum);
		
		model.addAttribute("view", view);
		
		return "view";
	}

}
