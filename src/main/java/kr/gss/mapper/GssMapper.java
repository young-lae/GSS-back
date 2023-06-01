package kr.gss.mapper;

import java.util.List;

import kr.gss.entity.Member;

public interface GssMapper {
	// 데이터베이스에서 회원목록을 가져오는 메서드 생성
	public List<Member> memberList();
	// 로그인 메서드 생성
	public Member login(Member mvo);
	// 회원가입 메서드 생성
	public int join(Member mvo);
	}

