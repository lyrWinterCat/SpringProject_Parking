package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mapper.UserMapper;

import vo.UserVO;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	
	public void getList() {
		for(UserVO userVO:userMapper.user_list()) {
			System.out.println(userVO.getUserName());
		}
	}
	
}
