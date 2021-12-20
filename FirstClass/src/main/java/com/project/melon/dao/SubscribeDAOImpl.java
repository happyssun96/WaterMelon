package com.project.melon.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.melon.model.SubscribeVO;

public class SubscribeDAOImpl implements SubscribeDAO{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String nameSpace = "com.project.melon.";
	@Override
	public int subscribeChk(SubscribeVO subscribeVo) {
		// TODO Auto-generated method stub
		int resultSubscribeChk = sqlSession.selectOne(nameSpace + "subscribeChk", subscribeVo);
		
		return resultSubscribeChk;
	}
	@Override
	public int subscribeInsertOne(SubscribeVO subscribeVo) {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace + "subscribeInsertOne", subscribeVo);
	}

}
