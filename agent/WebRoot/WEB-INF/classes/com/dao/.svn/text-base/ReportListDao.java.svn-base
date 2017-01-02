package com.dao;

import java.util.List;

import com.entity.ReportList;
import com.tool.Page;

public interface ReportListDao {

	//增加ReportList对象
	public int insertReportList(ReportList reportList);
	//查询reportlist表中的所有行数
	public int selectReportListRows(String finaceType, String startTime,String endTime);
	//查询reportlist表中的所有数据
	public List<ReportList> selectReportListByTypeAndDate(String finaceType, String startTime,String endTime,Page page);
	//根据选中的repId查询要导出的reportList
	public List<ReportList> selectReportListByIds(int[] id);
}
