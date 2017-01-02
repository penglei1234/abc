package com.entity;

public class Menu implements java.io.Serializable {

	// Fields

	private int id;
	private String url;
	private int pid;
	private int state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
}