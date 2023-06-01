package kr.gss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 선호 선수 : 아이디, 선수 번호
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PreferPlayer {
	private String id;
	private int player_seq;
}
