package kr.gss.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.gss.entity.Criteria;
import kr.gss.entity.Hitter;
import kr.gss.entity.Member;
import kr.gss.entity.News;
import kr.gss.entity.PageMaker;
import kr.gss.entity.Pitcher;
import kr.gss.entity.Player;
import kr.gss.mapper.GssMapper;

@Controller
public class GssController {
	
	@Autowired 
	private GssMapper mapper;
	
	@GetMapping("/login")
	public String login() {
		return "html/login";
	}
	
	@PostMapping("/login")
	public String login(Member mvo, HttpSession session) {
		Member vo = mapper.login(mvo);
		if (vo != null) { // 회원인증에 성공
			session.setAttribute("mvo", vo);
			return "redirect:/main";
		} else {          // 회원 인증 실패
			return "html/login";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate(); // 세션을 무효화
		return "redirect:/main";
	}
	
	@GetMapping("/join")
	public String join() {
		return "html/join";
	}
	
	@PostMapping("/join")
	public String join(Member mvo, HttpSession session) {
		int newMember = mapper.join(mvo);
		if (newMember != 0) {
			return "redirect:/login";
		} else {
			return "html/join";
		}
	}
	
	@RequestMapping("/search")
	public String search(Criteria cri, Model model, String teamname, String pos) {
		if(teamname != null && pos != null) {
			cri.setTeamname(teamname);
			cri.setPos(pos);
		}
		// 리스트 가져오기
		List<Player> pList = mapper.getPList(cri);
		// 객체 바인딩
		model.addAttribute("pList", pList);
		
		// 페이징 처리에 필요한 부분	
		PageMaker pm = new PageMaker();
		pm.setCri(cri);
		pm.setTotalCount(mapper.playerTotalCount(cri));
		model.addAttribute("pm", pm);
		
		return "html/search";
	}
	
	@RequestMapping("/p_get")
	public String p_get(int player_seq, Model model) {
		Player player = mapper.getPlayer(player_seq);
//		if (player.getPos().equals("투수")) {
//			// 선수가 투수일때
//			List<Pitcher> pc = mapper.getPitcher(player_seq);
//			model.addAttribute("pc", pc);
//			
//			return "html/player";
//		} else {
//			// 선수가 타자일때
//			List<Hitter> ht = mapper.getHitter(player_seq);
//			model.addAttribute("ht", ht);
//			
//			return "html/player";
//		}
		return "html/player";
	}
	
	@RequestMapping("/teamRanking")
	public String teamRanking() {
		
		
		return "html/teamRanking";
	}
	
	@RequestMapping("/news")
	public String news(Criteria cri, Model model) {
		// 뉴스 리스트 가져오기
		List<News> news = mapper.getNews(cri);
		model.addAttribute("news", news);
		
		// 페이징 처리에 필요한 부분	
		PageMaker pm = new PageMaker();
		pm.setCri(cri);		
		pm.setTotalCount(mapper.newsTotalCount(cri));
		model.addAttribute("pm", pm);
		
		return "html/news";
	}
	
}
