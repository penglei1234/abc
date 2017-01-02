package com.entity;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book implements java.io.Serializable {

	// Fields

	private String bookid;
	private String name;

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** full constructor */
	public Book(String name) {
		this.name = name;
	}

	// Property accessors

	public String getBookid() {
		return this.bookid;
	}

	public void setBookid(String bookid) {
		this.bookid = bookid;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}