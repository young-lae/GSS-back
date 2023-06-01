package kr.gss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 팀 : 팀순번, 팀이름
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Team {
	private int team_seq;
	private String teamname;
}
