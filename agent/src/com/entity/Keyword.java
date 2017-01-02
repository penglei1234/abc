package com.entity;

public class Keyword {
	private int keywordId;
	private String keywordName;
	private int cid;
	private int userId;
	private String keywordClass;
	private int keywordYears;
	private double keywordPrice;
	/**
	 * keywordNewdate：关键词开始日期
	 */
	private String keywordNewdate;
	/**
	 * keywordDate:关键词结束日期
	 */
	private String keywordDate;
	private int keywordApplyState;
	private int keywordCheckState;
	private int keywordUserState;
	private int keywordAppState;
	private int state;
	private int isdelete;
	private String keywordC;
	private String cname;
	private String userName;
	private User user=new User();
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getKeywordId() {
		return keywordId;
	}
	public void setKeywordId(int keywordId) {
		this.keywordId = keywordId;
	}
	public String getKeywordName() {
		return keywordName;
	}
	public void setKeywordName(String keywordName) {
		this.keywordName = keywordName;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getKeywordClass() {
		return keywordClass;
	}
	public void setKeywordClass(String keywordClass) {
		this.keywordClass = keywordClass;
	}
	public int getKeywordYears() {
		return keywordYears;
	}
	public void setKeywordYears(int keywordYears) {
		this.keywordYears = keywordYears;
	}
	public double getKeywordPrice() {
		return keywordPrice;
	}
	public void setKeywordPrice(double keywordPrice) {
		this.keywordPrice = keywordPrice;
	}
	public String getKeywordNewdate() {
		return keywordNewdate;
	}
	public void setKeywordNewdate(String keywordNewdate) {
		this.keywordNewdate = keywordNewdate;
	}
	public String getKeywordDate() {
		return keywordDate;
	}
	public void setKeywordDate(String keywordDate) {
		this.keywordDate = keywordDate;
	}
	public int getKeywordApplyState() {
		return keywordApplyState;
	}
	public void setKeywordApplyState(int keywordApplyState) {
		this.keywordApplyState = keywordApplyState;
	}
	public int getKeywordCheckState() {
		return keywordCheckState;
	}
	public void setKeywordCheckState(int keywordCheckState) {
		this.keywordCheckState = keywordCheckState;
	}
	public int getKeywordUserState() {
		return keywordUserState;
	}
	public void setKeywordUserState(int keywordUserState) {
		this.keywordUserState = keywordUserState;
	}
	public int getKeywordAppState() {
		return keywordAppState;
	}
	public void setKeywordAppState(int keywordAppState) {
		this.keywordAppState = keywordAppState;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
	}
	public String getKeywordC() {
		return keywordC;
	}
	public void setKeywordC(String keywordC) {
		this.keywordC = keywordC;
	}
	
}
