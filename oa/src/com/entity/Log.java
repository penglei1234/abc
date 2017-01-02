package com.entity;

public class Log implements java.io.Serializable {

	// Fields

	private int id;
	private String username;
	private String rolename;
	private String event;
	private String remark;
	private String updatetime;

	// Constructors

	/** default constructor */
	public Log() {
	}

	/** full constructor */
	public Log(String username, String rolename, String event, String remark,
			String updatetime) {
		this.username = username;
		this.rolename = rolename;
		this.event = event;
		this.remark = remark;
		this.updatetime = updatetime;
	}

	// Property accessors

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRolename() {
		return this.rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	public String getEvent() {
		return this.event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getUpdatetime() {
		return this.updatetime;
	}

	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}

}