package kr.gss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 경기 : 게임순번, 월, 일, 경기 시간, 팀1, 팀1 점수, 팀2, 팀2 점수, 경기 장소
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Game {
	private int game_seq;
	private int month;
	private int day;
	private String game_time;
	private int team_seq_1;
	private int team1_score;
	private int team_seq_2;
	private int team2_score;
	private String game_place;
}
