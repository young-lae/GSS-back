package kr.gss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 타자 : 선수순번, 이름, 연도, 경기, 타석, 타수, 안타, 홈런, 득점, 타점, 볼넷, 삼진, 도루, babip, 타율, 출루율, 장타율, 출루율 + 장타율, 공격력, 팀기여도
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Hitter {
	private int player_seq;
	private String name;
	private int year;
	private int g;
	private int pa;
	private int ab;
	private int h;
	private int hr;
	private int r;
	private int rbi;
	private int bb;
	private int so;
	private int sb;
	private float babip;
	private float ba;
	private float obp;
	private float slg;
	private float ops;
	private float woba;
	private float war;
}
