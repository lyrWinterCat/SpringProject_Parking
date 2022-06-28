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
	
	public List<UserVO> getList(String userId) {
		return userMapper.user_list(userId);
	}
	
	public void signUp(UserVO userVO) {
		userMapper.insert(userVO);
	}
	
	public Integer login(HashMap<String, String> userMap) {
		return userMapper.login(userMap);
	}
	
}
