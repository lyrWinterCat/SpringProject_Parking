package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.UserVO;

@Repository
public class UserDAO {
	
	@Autowired
	UserMapper userMapper;
	public UserDAO() {
		// TODO Auto-generated constructor stub
	}
	public List<UserVO> selectList(){
		return userMapper.user_list();
	}

}
