package kr.ac.kopo.perfume.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.perfume.model.Member;
import kr.ac.kopo.perfume.service.UserService;

@Controller
public class RootController {

	@Autowired
	UserService userService;

	@RequestMapping({ "/", "/index" })
	String index() {
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	String login() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	String login(Member member, HttpSession session) {
		if (userService.login(member)) {
			session.setAttribute("user", member.getId());
			System.out.println(session.getAttribute("user") + "로그인 성공");
		} else {
			System.out.println("로그인 실패");
		}

		return "redirect:.";
	}

	@RequestMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();

		return "redirect:.";
	}

	@RequestMapping("/terms")
	public String terms() {

		return "terms";
	}

	@RequestMapping(value = "/information", method = RequestMethod.GET)
	public String information() {

		return "information";
	}

	@RequestMapping(value = "/information", method = RequestMethod.POST)
	public String information(Member member) {
		member.setEmail(member.getEmail1(), member.getEmail2());
		userService.information(member);
		return "redirect:.";
	}

	@RequestMapping("/brand")
	public String brand() {
		return "brand";
	}

	@RequestMapping("/woman")
	public String woman() {
		return "woman";
	}

	@RequestMapping("/man")
	public String man() {
		return "man";
	}

	// @RequestMapping("/review")
	// public String review() {
	// return "review";
	// }

	// @RequestMapping("/write")
	// public String write() {
	// return "write";
	// }

	// @RequestMapping("/mypage")
	// public String mypage() {
	// return "mypage";
	// }

	@RequestMapping("/loginChk")
	@ResponseBody
	String loginChk(String id) {

		int count = userService.loginChk(id);

		return String.valueOf(count);
	}
	
	@RequestMapping("/loginOk")
	@ResponseBody
	String loginOk(String id, String pw) {

		int count = userService.loginOk(id, pw);

		return String.valueOf(count);
	}
}
