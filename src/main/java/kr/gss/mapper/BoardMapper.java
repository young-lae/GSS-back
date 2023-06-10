package kr.gss.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.gss.entity.Board;
import kr.gss.entity.Criteria;
import kr.gss.entity.Reply;
import kr.gss.entity.Team;
public interface BoardMapper {
	// 게시판 전체 리스트 가져오기
	public List<Board> getLists(Criteria cri);
	// 게시물을 등록하는 메소드 정의
	public void register(Board vo);
	// 팀순번이 들어있는 게시물 등록하는 메소드
	public void teamRegister(Board vo);
	// 선택한 번호에 해당하는 게시물 1개를 가져오는 메소드 정의
	public Board get(int board_seq);
	// 선택한 번호에 해당하는 게시물 1개 삭제하는 메소드 정의
	@Delete("delete from tb_board where board_seq=#{board_seq}")
	public void remove(int board_seq);
	// 선택한 번호에 해당하는 제목과 내용을 수정하는 메소드 정의
	public void modify(Board vo);
	// 조회수 누적 메소드
	@Update("update tb_board set views = views + 1 where board_seq = #{board_seq}")
	public void count(int board_seq);
	// 댓글 시퀀스 업데이트 메서드 정의
	public void replySeqUpdate(Board parent);
	// 댓글 생성 메서드 정의
	public int replyInsert(Reply re);
	// @Select("select count(*) from reply")
	public int totalCount(Criteria cri);
	// 게시글에 해당하는 댓글 리스트 가져오기
	public List<Reply> getReLists(int board_seq);
	// 팀 이름으로 순번 가져오기
	@Select("select * from tb_team where teamname = #{teamname}")
	public Team getTeamSeq(String teamname);
	// 팀 순번으로 팀 이름 가져오기
	@Select("select * from tb_team where team_seq = #{team_seq}")
	public Team getTeamName(int team_seq);
	// 팀 게시판 가져오기
	public List<Board> getTeamLists(Criteria cri);
	

	}
