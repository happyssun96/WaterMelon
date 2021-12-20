package com.project.melon.dao;

import java.util.List;

import com.project.melon.model.MemberVO;

public interface MemberDAO {
	
	public List<MemberVO> memberSelectList(String searchOption, String keyword, int start, int end);
	
	public MemberVO memberExist(String email, String password);
	
	//이메일 중복체크
	public int emailChk(MemberVO memberVo);
	
	//닉네임 중복체크
	public int nickNameChk(MemberVO memberVo);
	
	//멤버 캐시 구독권과 비교를 위한 구문
	public int memberCash(int no);
	
	public int memberInsertOne(MemberVO memberVo);
	
	public int memberSelectTotalCount();
	
	public MemberVO memberSelectOne(int no);
	
	public int memberUpdateOne(MemberVO memberVo);
	
	public void memberDeleteOne(int no);
}
