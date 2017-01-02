package com.entity;

import java.util.Date;
import java.util.List;

public class Company {
	
	private int cid;
	private String cname;
	private int tid;
	private int state;
	private String lowyer;
	private int licenseid;
	private String country;
	private String fax;
	private String phone;
	private String address;
	private Date regtime;
	private String licensecard;
	private String sheng;
	private String shi;
	private String qu;
	private String remark;
	private int isdelete;
	private String cweb;
	private int userId;
	private String userName;
	private double balance;
	/**
	 * Company类增加一个属性是CustomerTypeTb类型的
	 */
	private CustomerTypeTb cstmTypeTb;
	/**
	 *Company类增加一个属性Keyword类型的
	 */
	private Keyword keyword;
	/**
	 * Company类增加一个属性LianXiRen类的
	 */
	private List<LianXiRen> lianXiRen;
	/**
	 * Company类增加一个属性User类的
	 */
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<LianXiRen> getLianXiRen() {
		return lianXiRen;
	}
	public void setLianXiRen(List<LianXiRen> lianXiRen) {
		this.lianXiRen = lianXiRen;
	}
	public Keyword getKeyword() {
		return keyword;
	}
	public void setKeyword(Keyword keyword) {
		this.keyword = keyword;
	}
	public CustomerTypeTb getCstmTypeTb() {
		return cstmTypeTb;
	}
	public void setCstmTypeTb(CustomerTypeTb cstmTypeTb) {
		this.cstmTypeTb = cstmTypeTb;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getLowyer() {
		return lowyer;
	}
	public void setLowyer(String lowyer) {
		this.lowyer = lowyer;
	}
	public int getLicenseid() {
		return licenseid;
	}
	public void setLicenseid(int licenseid) {
		this.licenseid = licenseid;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getRegtime() {
		return regtime;
	}
	public void setRegtime(Date regtime) {
		this.regtime = regtime;
	}
	public String getLicensecard() {
		return licensecard;
	}
	public void setLicensecard(String licensecard) {
		this.licensecard = licensecard;
	}
	public String getSheng() {
		return sheng;
	}
	public void setSheng(String sheng) {
		this.sheng = sheng;
	}
	public String getShi() {
		return shi;
	}
	public void setShi(String shi) {
		this.shi = shi;
	}
	public String getQu() {
		return qu;
	}
	public void setQu(String qu) {
		this.qu = qu;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
	}
	public String getCweb() {
		return cweb;
	}
	public void setCweb(String cweb) {
		this.cweb = cweb;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public double getBalance() {
		return balance;
	}
	/**
	 * company:balance类型改变
	 */
	public void setBalance(double balance) {
		this.balance = balance;
	}
}
