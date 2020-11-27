package dto;

public class MemberDTO {
	
	
	String userId;
	String userName;
	String userPass;
	String birthDay;
	String userEmail;
	String userDigit;
	String userNum;
	
	
	
	public String getUserNum() {
		return userNum;
	}
	public void setUserNum(String userNum) {
		this.userNum = userNum;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserDigit() {
		return userDigit;
	}
	public void setUserDigit(String userDigit) {
		this.userDigit = userDigit;
	}
	@Override
	public String toString() {
		return "MemberDTO [userId=" + userId + ", userName=" + userName + ", userPass=" + userPass + ", birthDay="
				+ birthDay + ", userEmail=" + userEmail + ", userDigit=" + userDigit + ", userNum=" + userNum + "]";
	}
	
	
	
}
