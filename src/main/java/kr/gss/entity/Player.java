package kr.gss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 선수 : 선수번호, 이름, 이미지경로, 팀번호, 포지션, 등번호, 연봉, 체격
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Player {
	private int player_seq;
	private String name;
	private String birth;
	private int age;
	private String bodysize;
	private String pos;
	private String image_path;
	private String teamname;
	private int back_num;
	private int salary;	
}
