package com.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mapper.UserMapper;

import vo.UserVO;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	
	// userId로 유저 정보 불러오기
	public List<UserVO> getList(String userId) {
		return userMapper.user_list(userId);
	}
	
	// 회원가입 완료 전 아이디 유효성검사
	public boolean checkId(String userId) {
		return userMapper.checkId(userId)==1;
	}
	
	// 회원가입 완료 전 닉네임 유효성 검사
	public boolean checkNick(String userNick) {
		return userMapper.checkNick(userNick)==1;
	}
	
	// 회원가입 (db 데이터 추가)
	public void signUp(UserVO userVO) {
		userMapper.user_insert(userVO);
	}
	
	// 로그인
	public Integer login(HashMap<String, String> userMap) {
		return userMapper.user_login(userMap);
	}
		
}
