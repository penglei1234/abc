package com.service.impl;

import java.util.List;

import com.dao.ReportListDao;
import com.dao.impl.ReportListDaoImpl;
import com.entity.ReportList;
import com.service.ReportListService;
import com.tool.Page;

public class ReportListServiceImpl implements ReportListService {

	private ReportListDao reportListDao=new ReportListDaoImpl();
	@Override
	public int insertReportList(ReportList reportList) {

		return reportListDao.insertReportList(reportList);
	}
	@Override
	public int selectReportListRows(String finaceType, String startTime,String endTime) {
		
		return reportListDao.selectReportListRows(finaceType, startTime, endTime);
	}
	@Override
	public List<ReportList> selectReportListByTypeAndDate(
			String finaceType, String startTime,String endTime, Page page) {
		
		return reportListDao.selectReportListByTypeAndDate(finaceType, startTime, endTime, page);
	}
	@Override
	public List<ReportList> selectReportListByIds(int[] id) {

		return reportListDao.selectReportListByIds(id);
	}

}
