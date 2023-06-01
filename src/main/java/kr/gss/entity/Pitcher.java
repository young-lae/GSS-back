package kr.gss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 투수 : 선수순번, 이름, 연도, 승리, 패배, 세이브, 홀드, 블론, 경기, 선발, 이닝, 삼진/9, 볼넷/9, 홈런/9, babip, 잔루율, 평균자책점, 방어율_war, 독립피칭, 한국야구 독립피칭, 팀기여도
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pitcher {
	private int player_seq;
	private String name;
	private int year;
	private int w;
	private int l;
	private int sv;
	private int hld;
	private int b;
	private int g;
	private int slu;
	private int ip;
	private float so;
	private float bb;
	private float hr;
	private float babip;
	private float lob_precent;
	private float era;
	private float ra9_war;
	private float fip;
	private float kfip;
	private float war;
}
