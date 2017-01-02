package com.entity;

import java.util.Date;
import java.util.List;

public class User {
	private int userId;
	private String userRealName;
	private String userLogName;
	private String userPassword;
	private String userIdCard;
	private String userSex;
	private String userAddress;
	private String userEmail;
	private Date userStartTime;
	private String userPhone;
	private int userState;
	private String userCaiWu;
	private String userCaoZuo;
	private int userIsDel;
	private String userUrl;
	private Role role;

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserRealName() {
		return userRealName;
	}

	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}

	public String getUserLogName() {
		return userLogName;
	}

	public void setUserLogName(String userLogName) {
		this.userLogName = userLogName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserIdCard() {
		return userIdCard;
	}

	public void setUserIdCard(String userIdCard) {
		this.userIdCard = userIdCard;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Date getUserStartTime() {
		return userStartTime;
	}

	public void setUserStartTime(Date userStartTime) {
		this.userStartTime = userStartTime;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public int getUserState() {
		return userState;
	}

	public void setUserState(int userState) {
		this.userState = userState;
	}

	public String getUserCaiWu() {
		return userCaiWu;
	}

	public void setUserCaiWu(String userCaiWu) {
		this.userCaiWu = userCaiWu;
	}

	public String getUserCaoZuo() {
		return userCaoZuo;
	}

	public void setUserCaoZuo(String userCaoZuo) {
		this.userCaoZuo = userCaoZuo;
	}

	public int getUserIsDel() {
		return userIsDel;
	}

	public void setUserIsDel(int userIsDel) {
		this.userIsDel = userIsDel;
	}

	public String getUserUrl() {
		return userUrl;
	}

	public void setUserUrl(String userUrl) {
		this.userUrl = userUrl;
	}

}
