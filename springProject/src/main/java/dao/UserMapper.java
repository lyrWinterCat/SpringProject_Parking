package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import vo.UserVO;

public interface UserMapper {
	@Mapper
	public List<UserVO> user_list();
}
