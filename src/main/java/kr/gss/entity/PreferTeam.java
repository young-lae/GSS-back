package kr.gss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 선호 팀 : 아이디, 팀 번호
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PreferTeam {
	private String id;
	private int team_seq;
}
