package kr.gss.entity;

import lombok.Data;

@Data
public class Criteria {
	private int page; // 현재 페이지 번호
	private int perPageNum; // 한페이지에 보여질 게시글의 수
	// 검색 기능에 필요한 변수
	private String type;
	private String keyword; // 검색어
	private String teamname;
	private String pos;
	private int team_seq;
	
	public Criteria() {
		this.page=1;
		this.perPageNum=10; // 조정
	}
	
	// 현재 페이지의 게시글의 시작번호 
	public int getPageStart() {
		return (page-1)*perPageNum;
	}
}
