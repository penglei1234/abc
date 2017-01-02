package com.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.dao.BaseDao;
import com.dao.ReportListDao;
import com.entity.ReportList;
import com.tool.Page;

public class ReportListDaoImpl extends BaseDao implements ReportListDao {

	@Override
	public int insertReportList(ReportList reportList) {

		String sql="insert into report_list(rep_agentname,rep_custerm,rep_money,rep_nowdate,rep_remark,rep_finatype) values(?,?,?,?,?,?)";
		return update(sql, reportList.getRepAgentName(),reportList.getRepCusterm(),reportList.getRepMoney(),reportList.getRepNowDate(),reportList.getRepRemark(),reportList.getRepFinaType());		
	}

	@Override
	public int selectReportListRows(String finaceType, String startTime,String endTime) {
		StringBuffer sql=new StringBuffer("select count(rep_id) from report_list where 1=1 ");
		List<Object> params=new ArrayList<Object>();
		if(finaceType!=null&&!"".equals(finaceType)){
			sql.append("and rep_finatype=? ");
			params.add(finaceType);
		}
		if(startTime!=null&&!"".equals(startTime)){
			sql.append("and rep_nowdate>? ");
			params.add(startTime);
		}
		if(endTime!=null&&!"".equals(endTime)){
			sql.append("and rep_nowdate<?");
			params.add(endTime);
		}
		ResultSet rs=null;
		try {
			rs=query(sql.toString(), params.toArray());
			if(rs.next()){
				return rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally{
			closeAll(rs, ps, con);
		}
		return -1;
	}

	@Override
	public List<ReportList> selectReportListByTypeAndDate(String finaceType, String startTime,
			String endTime, Page page) {

		StringBuffer sql=new StringBuffer("select * from report_list where 1=1 ");
		List<Object> params=new ArrayList<Object>();
		if(finaceType!=null&&!"".equals(finaceType)){
			sql.append("and rep_finatype=? ");
			params.add(finaceType);
		}
		if(startTime!=null&&!"".equals(startTime)){
			sql.append("and rep_nowdate>? ");
			params.add(startTime);
		}
		if(endTime!=null&&!"".equals(endTime)){
			sql.append("and rep_nowdate<? ");
			params.add(endTime);
		}
		sql.append("order by rep_id desc ");
		sql.append("limit ?,?");
		params.add((page.getPageNow()-1)*page.getPageSize());
		params.add(page.getPageSize());
		ResultSet rs=null;
		List<ReportList> reportList=new ArrayList<ReportList>();
		try {
			rs=query(sql.toString(), params.toArray());
			while(rs.next()){
				ReportList report=new ReportList();
				report.setRepId(rs.getInt("rep_id"));
				report.setRepAgentName(rs.getString("rep_agentname"));
				report.setRepCusterm(rs.getString("rep_custerm"));
				report.setRepMoney(rs.getDouble("rep_money"));
				report.setRepNowDate(rs.getDate("rep_nowdate"));
				report.setRepRemark(rs.getString("rep_remark"));
				report.setRepFinaType(rs.getString("rep_finatype"));
				
				reportList.add(report);
			}
			return reportList;
		} catch (Exception e) {
			// TODO: handle exception
		} finally{
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public List<ReportList> selectReportListByIds(int[] id) {
		//select * from report_list where rep_id in(1,2,3);
		StringBuffer sql=new StringBuffer("select * from report_list where rep_id in(");
		for(int i=0;i<id.length;i++){
			if(i==id.length-1){
				sql.append(id[i]);
				sql.append(")");
			}else{
				sql.append(id[i]);
				sql.append(",");
			}
		}
		ResultSet rs=null;
		List<ReportList> reportList=new ArrayList<ReportList>();
		try {
			rs=query(sql.toString());
			while(rs.next()){
				ReportList report=new ReportList();
				report.setRepId(rs.getInt("rep_id"));
				report.setRepAgentName(rs.getString("rep_agentname"));
				report.setRepCusterm(rs.getString("rep_custerm"));
				report.setRepMoney(rs.getDouble("rep_money"));
				report.setRepNowDate(rs.getDate("rep_nowdate"));
				report.setRepRemark(rs.getString("rep_remark"));
				report.setRepFinaType(rs.getString("rep_finatype"));
				
				reportList.add(report);
			}
			return reportList;
		} catch (Exception e) {
			// TODO: handle exception
		} finally{
			closeAll(rs, ps, con);
		}
		
		return null;
	}
}
