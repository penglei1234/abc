package com.tool;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.entity.Prepayment;
import com.entity.ReportList;

public class ExportExcel {

	public static void exportExcel(List<ReportList> reportList, String filepath) {
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("agent");
		HSSFRow row = sheet.createRow(0);
		HSSFCell cell0 = row.createCell(0);
		cell0.setCellValue("rep_id");
		HSSFCell cell1 = row.createCell(1);
		cell1.setCellValue("rep_agentname");
		HSSFCell cell2 = row.createCell(2);
		cell2.setCellValue("rep_custerm");
		HSSFCell cell3 = row.createCell(3);
		cell3.setCellValue("rep_money");
		HSSFCell cell4 = row.createCell(4);
		cell4.setCellValue("rep_nowdate");
		HSSFCell cell5 = row.createCell(5);
		cell5.setCellValue("rep_remark");
		HSSFCell cell6 = row.createCell(6);
		cell6.setCellValue("rep_finatype");

		for (int i = 0; i < reportList.size(); i++) {
			HSSFRow row1 = sheet.createRow(i + 1);
			HSSFCell cell10 = row1.createCell(0);
			cell10.setCellValue(reportList.get(i).getRepId());
			HSSFCell cell11 = row1.createCell(1);
			cell11.setCellValue(reportList.get(i).getRepAgentName());
			HSSFCell cell12 = row1.createCell(2);
			cell12.setCellValue(reportList.get(i).getRepCusterm());
			HSSFCell cell13 = row1.createCell(3);
			cell13.setCellValue(reportList.get(i).getRepMoney());
			HSSFCell cell14 = row1.createCell(4);
			cell14.setCellValue(reportList.get(i).getRepNowDate());
			HSSFCell cell15 = row1.createCell(5);
			cell15.setCellValue(reportList.get(i).getRepRemark());
			HSSFCell cell16 = row1.createCell(6);
			cell16.setCellValue(reportList.get(i).getRepFinaType());

		}
		File file = new File(filepath);
		OutputStream out = null;
		try {
			out = new FileOutputStream(file);
			workbook.write(out);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				out.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public static void exportExcel1(List<Prepayment> prepayment, String filepath) {
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("agent");
		HSSFRow row = sheet.createRow(0);
		HSSFCell cell0 = row.createCell(0);
		cell0.setCellValue("preid");
		HSSFCell cell1 = row.createCell(1);
		cell1.setCellValue("finaceType");
		HSSFCell cell2 = row.createCell(2);
		cell2.setCellValue("finacemoney");
		HSSFCell cell3 = row.createCell(3);
		cell3.setCellValue("idbalance");
		HSSFCell cell4 = row.createCell(4);
		cell4.setCellValue("remark");
		HSSFCell cell5 = row.createCell(5);
		cell5.setCellValue("DATETIME");

		for (int i = 0; i < prepayment.size(); i++) {
			HSSFRow row1 = sheet.createRow(i + 1);
			HSSFCell cell10 = row1.createCell(0);
			cell10.setCellValue(prepayment.get(i).getPreid());
			HSSFCell cell11 = row1.createCell(1);
			cell11.setCellValue(prepayment.get(i).getFinaceType());
			HSSFCell cell12 = row1.createCell(2);
			cell12.setCellValue(prepayment.get(i).getFinacemoney());
			HSSFCell cell13 = row1.createCell(3);
			cell13.setCellValue(prepayment.get(i).getIdbalance());
			HSSFCell cell14 = row1.createCell(4);
			cell14.setCellValue(prepayment.get(i).getRemark());
			HSSFCell cell15 = row1.createCell(5);
			cell15.setCellValue(prepayment.get(i).getDatetime());
		}
		File file = new File(filepath);
		OutputStream out = null;
		try {
			out = new FileOutputStream(file);
			workbook.write(out);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				out.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
