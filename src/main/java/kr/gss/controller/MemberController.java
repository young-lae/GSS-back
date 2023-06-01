package kr.gss.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.gss.entity.Member;
import kr.gss.mapper.GssMapper;

@Controller
public class MemberController {
	
	@Autowired 
	private GssMapper mapper;
	
	@RequestMapping("/login")
	public String login(Member mvo, HttpSession session) {
		Member vo = mapper.login(mvo);
		if (vo != null) { // 회원인증에 성공
			session.setAttribute("mvo", vo);
		}
		return "redirect:/list";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate(); // 세션을 무효화
		return "redirect:/list";
	}
	
	@GetMapping("/join")
	public String join() {
		return "join";
	}
	
	@PostMapping("/join")
	public String join(Member mvo, HttpSession session) {
		int newMember = mapper.join(mvo);
		if (newMember != 0) {
			return "redirect:board/list";
		} else {
			return "join";
		}
		
	}
	
}
