package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.dao.BaseDao;
import com.dao.KeyWordCheckdao;
import com.entity.Keyword;
import com.tool.Page;

public class KeyWordCheckdaoImpl extends BaseDao implements KeyWordCheckdao{

	@Override
	public int selectPageSize(String name) {
		StringBuffer sql=new StringBuffer("select count(1)  from keyword where 1=1");
		List<Object> params=new ArrayList<Object>();
		if(name!=null&&!"".equals(name)){
			sql.append(" and keyword_name like ?");
			// 如果查询条件的用户名不为空，则将用户名加入到集合中
			params.add("%"+name+"%");
		}
		
		try {
			rs=query(sql.toString(),params.toArray());
			if(rs.next()){
				//int pageSize=rs.getInt("pageSize");
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return 0;
	}


	@Override
	public List<Keyword> selectAll(Page page, String name) {
		// 创建集合，用于存储客户端的筛选条件（查询条件）
				List<Object> params=new ArrayList<Object>();
				StringBuffer sql=new StringBuffer("SELECT k.keyword_name,u.user_logname,u.user_realname,k.keyword_years,k.keyword_newdate,keyword_date,k.keyword_apply_state,k.keyword_check_state,k.keyword_use_state,k.keyword_app_state FROM keyword k INNER JOIN USER u ON u.user_id=k.user_id where 1=1 ");
				if(name!=null&&!"".equals(name)){
					sql.append(" and keyword_name like ?");
					// 如果查询条件的用户名不为空，则将用户名加入到集合中
					params.add("%"+name+"%");
				}
				
				
				// 向集合中加入分页的参数
				sql.append(" order by keyword_id asc");
				sql.append(" limit ?,?");
				params.add((page.getPageNow()-1) *page.getPageSize());
				params.add(page.getPageSize());
				List<Keyword>list=new ArrayList<Keyword>();
				try {
					rs=query(sql.toString(),params.toArray());
					while(rs.next()){
						Keyword kw=new Keyword();
						kw.setKeywordName(rs.getString(1));
						kw.getUser().setUserLogName(rs.getString(2));
						kw.getUser().setUserRealName((rs.getString(3)));
						kw.setKeywordYears(rs.getInt(4));
						kw.setKeywordNewdate(rs.getString(5));
						kw.setKeywordDate(rs.getString(6));
						kw.setKeywordApplyState(rs.getInt(7));
						kw.setKeywordCheckState(rs.getInt(8));
						kw.setKeywordUserState(rs.getInt(9));
						kw.setKeywordApplyState(rs.getInt(10));
						list.add(kw);
					}
					return list;
				
				} catch (Exception e) {
					e.printStackTrace();
				}finally{
					closeAll(rs, ps, con);
				}
				return null;
			}
	
	
	
	
	}


