package com.test;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int pageRows=224;
		int pageSize=10;
		int pageCount=(int)(Math.ceil((double)pageRows/pageSize));
		System.out.println(pageCount);
	}

}
