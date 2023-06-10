package kr.gss.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.gss.entity.Criteria;
import kr.gss.entity.Hitter;
import kr.gss.entity.Member;
import kr.gss.entity.News;
import kr.gss.entity.Pitcher;
import kr.gss.entity.Player;

public interface GssMapper {
	// 데이터베이스에서 회원목록을 가져오는 메서드 생성
	public List<Member> memberList();
	// 로그인 메서드 생성
	public Member login(Member mvo);
	// 회원가입 메서드 생성
	public int join(Member mvo);
	// 선수리스트 가져오는 메서드 생성
	public List<Player> getPList(Criteria cri);
	// 선수리스트 페이징 처리
	public int playerTotalCount(Criteria cri);
	// 선택한 선수데이터 가져오기
	@Select("select * from tb_player where player_seq = #{player_seq}")
	public Player getPlayer(int player_seq);
	// 선택한 투수의 3년치 데이터 가져오기
	@Select("select * from tb_pithcer where player_seq = #{player_seq}")
	public List<Pitcher> getPitcher(int player_seq);
	// 선택한 타자의 3년치 데이터 가져오기
	@Select("select * from tb_hitter where player_seq = #{player_seq}")
	public List<Hitter> getHitter(int player_seq);
	// 뉴스테이블에서 리스트 꺼내오기
	public List<News> getNews(Criteria cri);
	// 뉴스리스트 페이징 처리
	public int newsTotalCount(Criteria cri);
	}

