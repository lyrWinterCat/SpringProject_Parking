package vo;

import org.springframework.stereotype.Component;

@Component
public class UserVO {
	private String userId, userPwd, userName, userPhone1,userPhone2,userPhone3, userNick, userPhoto, userEmail;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone1() {
		return userPhone1;
	}

	public void setUserPhone1(String userPhone1) {
		this.userPhone1 = userPhone1;
	}

	public String getUserPhone2() {
		return userPhone2;
	}

	public void setUserPhone2(String userPhone2) {
		this.userPhone2 = userPhone2;
	}

	public String getUserPhone3() {
		return userPhone3;
	}

	public void setUserPhone3(String userPhone3) {
		this.userPhone3 = userPhone3;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public String getUserPhoto() {
		return userPhoto;
	}

	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	} 
	
	
	

}
