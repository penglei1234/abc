package com.dao;

import java.util.List;

import com.entity.Keyword;
import com.tool.Page;

public interface KeywordDao {
	// 根据公司id查询关键词对象
	public Keyword selectKeywordByCid(int cid);

	// 根据关键词名查询关键词对象
	public Keyword selectKeywordByKeywordName(String keywordName);

	// 新增keyword表数据；
	public int insertKeyword(String keywordName, int cid, int userId,
			String keywordClass, int keywordYears, double keywordPrice,
			String keywordNewdate, String keywordDate, int keywordApplyState,
			int keywordCheckState, int keywordUseState, int keywordAppState);
	//模糊查询keywordName;
	public List<Keyword> selectKeywordNameByLike(String kname,Page page);
}
