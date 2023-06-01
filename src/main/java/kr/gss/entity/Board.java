package kr.gss.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 게시판 : 번호, 제목, 내용, 작성자, 조회수, 작성일
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {
	private int board_seq;
	private String title;
	private String content;
	private String nick;
	private int views;
	private Date write_date;
	private int team_seq;
	// Lombok API
	
}
