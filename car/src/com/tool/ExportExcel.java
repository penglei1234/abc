package com.tool;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.entity.User;

public class ExportExcel {
	
	public static void exportExcel(List<User> userList,String path){
		
		File file=new File(path);
		exportExcel(userList, file);
	}
	public static void exportExcel(List<User> userList,File file){
		OutputStream os=null;
		try {
			os=new FileOutputStream(file);
			exportExcel(userList, os);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(os!=null){
					os.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	public static void exportExcel(List<User> userList,OutputStream os) {
		HSSFWorkbook workbook=new HSSFWorkbook();
		HSSFSheet sheet=workbook.createSheet("user");
		HSSFRow row0=sheet.createRow(0);
		HSSFCell cell00=row0.createCell(0);
		cell00.setCellValue("id");
		HSSFCell cell01=row0.createCell(1);
		cell01.setCellValue("usename");
		HSSFCell cell02=row0.createCell(2);
		cell02.setCellValue("password");
		HSSFCell cell03=row0.createCell(3);
		cell03.setCellValue("sex");
		HSSFCell cell04=row0.createCell(4);
		cell04.setCellValue("age");
		HSSFCell cell05=row0.createCell(5);
		cell05.setCellValue("idcard");
		HSSFCell cell06=row0.createCell(6);
		cell06.setCellValue("tel");
		HSSFCell cell07=row0.createCell(7);
		cell07.setCellValue("address");
		HSSFCell cell08=row0.createCell(8);
		cell08.setCellValue("intime");
		HSSFCell cell09=row0.createCell(9);
		cell09.setCellValue("outtime");
		HSSFCell cell010=row0.createCell(10);
		cell010.setCellValue("state");
		
		
		
		for(int i=0;i<userList.size();i++){
			HSSFRow row=sheet.createRow(i+1);
			
			HSSFCell cell10=row.createCell(0);
			cell10.setCellValue(userList.get(i).getId());
			HSSFCell cell11=row.createCell(1);
			cell11.setCellValue(userList.get(i).getUsername());
			HSSFCell cell12=row.createCell(2);
			cell12.setCellValue(userList.get(i).getPassword());
			HSSFCell cell13=row.createCell(3);
			cell13.setCellValue(userList.get(i).getSex());
			HSSFCell cell14=row.createCell(4);
			cell14.setCellValue(userList.get(i).getAge());
			HSSFCell cell15=row.createCell(5);
			cell15.setCellValue(userList.get(i).getIdcard());
			HSSFCell cell16=row.createCell(6);
			cell16.setCellValue(userList.get(i).getTel());
			HSSFCell cell17=row.createCell(7);
			cell17.setCellValue(userList.get(i).getAddress());
			HSSFCell cell18=row.createCell(8);
			cell18.setCellValue(userList.get(i).getIntime());
			HSSFCell cell19=row.createCell(9);
			cell19.setCellValue(userList.get(i).getOuttime());
			HSSFCell cell110=row.createCell(10);
			cell110.setCellValue(userList.get(i).getState());
		}
		try {	
			workbook.write(os);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(os!=null){
					os.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
}
