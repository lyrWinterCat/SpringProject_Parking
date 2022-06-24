package com.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import vo.AdminVO;

@Mapper
public interface AdminMapper {
	public List<AdminVO> admin_list();

}
