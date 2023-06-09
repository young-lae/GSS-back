package kr.gss.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.gss.entity.Board;
import kr.gss.entity.Criteria;
import kr.gss.entity.PageMaker;
import kr.gss.entity.Reply;
import kr.gss.entity.Team;
import kr.gss.mapper.BoardMapper;

@Controller // 컨트롤러로 인식을 한다
public class BoardController {
	
	@Autowired // 스프링이 알아서 연결
	private BoardMapper mapper;
	
	@RequestMapping("/main")
	public String main() {
		return "html/main";
	}
	
	@RequestMapping("/monthSchedule")
	public String monthSchedule() {
		return "html/monthSchedule";
	}
	
	@RequestMapping("/community") // /list --- HandlerMapping ---> list()리스트 메소드 실행
	public String community(Criteria cri, Model model, String teamname) {
		if (teamname == null) {
			// 리스트 가져오기
			List<Board> list = mapper.getLists(cri);
			for (Board bd : list) {
				if(bd.getTeam_seq() != 0) {
					Team team = mapper.getTeamName(bd.getTeam_seq());
					bd.setTeamname(team.getTeamname());
				}
			};
			// 객체 바인딩
			model.addAttribute("list", list);
		} else {
			if (teamname.equals("all")) {
				// 리스트 가져오기
				List<Board> allList = mapper.getLists(cri);
				for (Board bd : allList) {
					if(bd.getTeam_seq() != 0) {
						Team team = mapper.getTeamName(bd.getTeam_seq());
						bd.setTeamname(team.getTeamname());
					}
				};
				// 객체 바인딩
				model.addAttribute("list", allList);
			} else {
				Team tm = mapper.getTeamSeq(teamname);
				cri.setType("team_seq");
				cri.setTeam_seq(tm.getTeam_seq());
				List<Board> teamList = mapper.getTeamLists(cri);
				for (Board bd : teamList) {
					if(bd.getTeam_seq() != 0) {
						Team team = mapper.getTeamName(bd.getTeam_seq());
						bd.setTeamname(team.getTeamname());
					}
				};
				model.addAttribute("list", teamList);
			}
		}
		
		// 페이징 처리에 필요한 부분	
		PageMaker pm = new PageMaker();
		pm.setCri(cri);		
		pm.setTotalCount(mapper.totalCount(cri));
		model.addAttribute("pm", pm);
		
		return "html/community";
	}
	
	@GetMapping("/register")
	public String register() {
		return "html/c_register";
	}
	
	@PostMapping("/register")
	public String register(Board vo, String teamname, Model model) {
		if (teamname.equals("all")) {
			mapper.register(vo);
		} else {
			Team tm = mapper.getTeamSeq(teamname);
			model.addAttribute("tm", tm);
			vo.setTeamname(teamname);
			vo.setTeam_seq(tm.getTeam_seq());
			mapper.teamRegister(vo);
		}
		return "redirect:/community";
	}
	
	@GetMapping("/get")
	public String get(int board_seq, Model model, @ModelAttribute("cri") Criteria cri) {
		Board board = mapper.get(board_seq);
		model.addAttribute("vo", board);
		model.addAttribute("cri", cri);
		// 조회수 누적
		mapper.count(board_seq);
		// 게시글에 해당하는 댓글 가져오기
		List<Reply> reList = mapper.getReLists(board_seq);
		model.addAttribute("reList", reList);		
		return "html/c_get";
	}
	
	@RequestMapping("/remove")
	public String remove(int board_seq, Criteria cri, RedirectAttributes rttr) { // 
		mapper.remove(board_seq);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/community";
	}
	
	@GetMapping("/modify")
	public String modify(int board_seq, Model model, @ModelAttribute("cri") Criteria cri) {
		Board vo = mapper.get(board_seq);
		model.addAttribute("vo", vo);
		return "html/c_modify";
	}
	
	@PostMapping("/modify")
	public String modify(Board vo, RedirectAttributes rttr, Criteria cri) { // title, content, writer
		mapper.modify(vo);
		// 수정 성공 후에 다시 상세보기 페이지로 이동
		rttr.addAttribute("board_seq", vo.getBoard_seq());
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/get";
	}
	
	@PostMapping("/reply") 
	public String reply(Reply re, int board_seq, Model model, RedirectAttributes rttr, Criteria cri) {
		// 답글에 필요한 정보 만들기
		re.setBoard_seq(board_seq);
		mapper.replyInsert(re);
		Board board = mapper.get(board_seq);
		model.addAttribute("vo", board);
		rttr.addAttribute("board_seq", board_seq);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		// 댓글 성공 후에 다시 상세보기 페이지로 이동
		return "redirect:/get";
	}
}
