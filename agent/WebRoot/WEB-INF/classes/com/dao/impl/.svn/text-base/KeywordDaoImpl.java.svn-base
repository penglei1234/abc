package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.KeywordDao;
import com.entity.Keyword;
import com.tool.Page;

public class KeywordDaoImpl extends BaseDao implements KeywordDao {

	@Override
	public Keyword selectKeywordByCid(int cid) {

		String sql = "select * from keyword where cid=?";
		ResultSet rs = null;
		try {
			rs = query(sql, cid);
			if (rs.next()) {
				Keyword keyword = new Keyword();
				keyword.setKeywordId(rs.getInt("keyword_id"));
				keyword.setKeywordName(rs.getString("keyword_name"));
				keyword.setCid(rs.getInt("cid"));
				keyword.setUserId(rs.getInt("user_id"));
				keyword.setKeywordClass(rs.getString("keyword_class"));
				keyword.setKeywordYears(rs.getInt("keyword_years"));
				keyword.setKeywordPrice(rs.getDouble("keyword_price"));
				keyword.setKeywordNewdate(rs.getString("keyword_newdate"));
				keyword.setKeywordDate(rs.getString("keyword_date"));
				keyword.setKeywordApplyState(rs.getInt("keyword_apply_state"));
				keyword.setKeywordCheckState(rs.getInt("keyword_check_state"));
				keyword.setKeywordUserState(rs.getInt("keyword_use_state"));
				keyword.setKeywordAppState(rs.getInt("keyword_app_state"));
				keyword.setState(rs.getInt("state"));
				keyword.setIsdelete(rs.getInt("isdelete"));
				keyword.setKeywordC(rs.getString("keyword_c"));
				return keyword;
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public Keyword selectKeywordByKeywordName(String keywordName) {
		// TODO Auto-generated method stub

		String sql = "select * from keyword where keyword_name=?";
		ResultSet rs = null;
		try {
			rs = query(sql, keywordName);
			if (rs.next()) {
				Keyword keyword = new Keyword();
				keyword.setKeywordId(rs.getInt("keyword_id"));
				keyword.setKeywordName(rs.getString("keyword_name"));
				keyword.setCid(rs.getInt("cid"));
				keyword.setUserId(rs.getInt("user_id"));
				keyword.setKeywordClass(rs.getString("keyword_class"));
				keyword.setKeywordYears(rs.getInt("keyword_years"));
				keyword.setKeywordPrice(rs.getDouble("keyword_price"));
				keyword.setKeywordNewdate(rs.getString("keyword_newdate"));
				keyword.setKeywordDate(rs.getString("keyword_date"));
				keyword.setKeywordApplyState(rs.getInt("keyword_apply_state"));
				keyword.setKeywordCheckState(rs.getInt("keyword_check_state"));
				keyword.setKeywordUserState(rs.getInt("keyword_use_state"));
				keyword.setKeywordAppState(rs.getInt("keyword_app_state"));
				keyword.setState(rs.getInt("state"));
				keyword.setIsdelete(rs.getInt("isdelete"));
				keyword.setKeywordC(rs.getString("keyword_c"));

				return keyword;
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}

	@Override
	public int insertKeyword(String keywordName, int cid, int userId,
			String keywordClass, int keywordYears, double keywordPrice,
			String keywordNewdate, String keywordDate, int keywordApplyState,
			int keywordCheckState, int keywordUseState, int keywordAppState) {
		// TODO Auto-generated method stub
		String sql = "insert into keyword (keyword_name,cid,user_id,keyword_class,keyword_years,keyword_price,keyword_newdate,keyword_date,keyword_apply_state,keyword_check_state,keyword_use_state,keyword_app_state)values(?,?,?,?,?,?,?,?,?,?,?,?)";
		return update(sql, keywordName, cid, userId, keywordClass,
				keywordYears, keywordPrice, keywordNewdate, keywordDate,
				keywordApplyState, keywordCheckState, keywordUseState,
				keywordAppState);
	}

	@Override
	public List<Keyword> selectKeywordNameByLike(String kname,Page page) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		String sql = "SELECT keyword_name,cname,user_name,keyword_years,keyword_newdate,keyword_date,keyword_apply_state,keyword_check_state,keyword_use_state FROM keyword k LEFT JOIN company c ON k.cid=c.cid  WHERE keyword_name LIKE ? ORDER BY keyword_name limit ?,?";
		String newKname = "%" + kname + "%";
		int index=page.getPageNow()*page.getPageSize();
		try {
			rs = query(sql, newKname,index,10);
			List<Keyword> keywords = new ArrayList<Keyword>();
			while (rs.next()) {
				Keyword keyword=new Keyword();
				keyword.setKeywordName(rs.getString("keyword_name"));
				keyword.setCname(rs.getString("cname"));
				keyword.setUserName(rs.getString("user_name"));
				keyword.setKeywordYears(rs.getInt("keyword_years"));
				keyword.setKeywordNewdate(rs.getString("keyword_newdate"));
				keyword.setKeywordDate(rs.getString("keyword_date"));
				keyword.setKeywordApplyState(rs.getInt("keyword_apply_state"));
				keyword.setKeywordCheckState(rs.getInt("keyword_check_state"));
				keyword.setKeywordUserState(rs.getInt("keyword_use_state"));
				keywords.add(keyword);
			}
			if (keywords.size() > 0) {
				return keywords;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll(rs, ps, con);
		}
		return null;
	}
}
