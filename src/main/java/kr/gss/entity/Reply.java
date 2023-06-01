package kr.gss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 답글 : 원글 번호, 댓글 번호, 댓글 내용, 작성자
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reply {
	private int board_seq;
	private int reply_seq;
	private String reply_content;
	private String nick;
}
