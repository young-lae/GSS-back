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
import kr.gss.mapper.BoardMapper;

@Controller // 컨트롤러로 인식을 한다
public class BoardController {
	
	@Autowired // 스프링이 알아서 연결
	private BoardMapper mapper;
	
	@RequestMapping("/list") // /list --- HandlerMapping ---> list()리스트 메소드 실행
	public String list(Criteria cri, Model model) {
		// 리스트 가져오기
		List<Board> list = mapper.getLists(cri);
		// 객체 바인딩
		model.addAttribute("list", list);
		// 페이징 처리에 필요한 부분	
		PageMaker pm = new PageMaker();
		pm.setCri(cri);		
		pm.setTotalCount(mapper.totalCount(cri));
		model.addAttribute("pm", pm);
		
		return "board/list"; // /WEB-IMF/views/list.jsp : forward
	}
	
	@GetMapping("/register")
	public String register() {
		return "board/register";
	}
	
	@PostMapping("/register")
	public String register(Board vo) {
		mapper.register(vo);
		// 등록 성공 후에는 다시 리스트 페이지로 경로를 변경 : redirect
		return "redirect:/list";
	}
	
	@GetMapping("/get")
	public String get(int board_seq, Model model, @ModelAttribute("cri") Criteria cri) {
		Board board = mapper.get(board_seq);
		model.addAttribute("vo", board);
		model.addAttribute("cri", cri);
		// 조회수 누적
		mapper.count(board_seq);
		List<Reply> reList = mapper.getReLists(board_seq);
		model.addAttribute("reList", reList);		
		return "board/get";
	}
	
	@RequestMapping("/remove")
	public String remove(int board_seq, Criteria cri, RedirectAttributes rttr) { // 
		mapper.remove(board_seq);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/list";
	}
	
	@GetMapping("/modify")
	public String modify(int board_seq, Model model, @ModelAttribute("cri") Criteria cri) {
		Board vo = mapper.get(board_seq);
		model.addAttribute("vo", vo);
		return "board/modify";
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
