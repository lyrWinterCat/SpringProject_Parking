package com.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import vo.UserVO;

@Mapper
public interface UserMapper {
	public List<UserVO> user_list();
}
