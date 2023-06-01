package kr.gss.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 회원 : 아이디, 비밀번호, 닉네임, 유형
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private String id;
	private String pw;
	private String nick;
	private String type;
}
