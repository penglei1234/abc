package com.tool;

public class Page {
	//pageNow:当前页的页码
	//pageSize:每页显示的行数
	//pageCount:总共有多少页
	//pageRows:数据库中总的结果集行数
	private int pageNow;
	private int pageSize;
	private int pageCount;
	private int pageRows;
	
	
	public Page(int pageNow, int pageSize, int pageRows) {
		super();
		this.pageNow = pageNow;
		this.pageSize = pageSize;
		this.pageCount = pageRows%pageSize==0?pageRows/pageSize:pageRows/pageSize+1;
		this.pageRows = pageRows;
	}
	
	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPageRows() {
		return pageRows;
	}
	public void setPageRows(int pageRows) {
		this.pageRows = pageRows;
	}
	
}
