package com.service;

import java.util.List;

import com.entity.Keyword;
import com.tool.Page;

public interface KeywordService {
	public Keyword selectKeywordByCid(int cid);
	public Keyword selectKeywordBykeywordName(String keywordName);
	public int insertKeyword(String keywordName, int cid, int userId,
			String keywordClass, int keywordYears, double keywordPrice,
			String keywordNewdate, String keywordDate, int keywordApplyState,
			int keywordCheckState, int keywordUseState, int keywordAppState);
	public List<Keyword> selectKeywordNameByLike(String kname,Page page);
}
