package com.entity;

public class Room implements java.io.Serializable {

	// Fields

	private int id;
	private String name;
	private String remark;

	// Constructors

	/** default constructor */
	public Room() {
	}

	/** full constructor */
	public Room(String name, String remark) {
		this.name = name;
		this.remark = remark;
	}

	// Property accessors

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}