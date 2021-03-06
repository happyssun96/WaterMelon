package com.project.melon.service;

import com.project.melon.model.SubscribeVO;

public interface SubscribeService {
	//구독권 중복체크
	public int subscribeChk(int memberNo);
	
	//구독권 추가
	public int subscribeInsertOne(int memberNo);
	
	public SubscribeVO subscribeSelectOne(int memberNo);
}
