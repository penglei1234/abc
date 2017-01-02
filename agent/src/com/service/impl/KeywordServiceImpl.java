package com.service.impl;

import java.util.List;

import com.dao.KeywordDao;
import com.dao.impl.KeywordDaoImpl;
import com.entity.Keyword;
import com.service.KeywordService;
import com.tool.Page;

public class KeywordServiceImpl implements KeywordService {

	private KeywordDao keywordDao = new KeywordDaoImpl();

	@Override
	public Keyword selectKeywordByCid(int cid) {
		// TODO Auto-generated method stub
		return keywordDao.selectKeywordByCid(cid);
	}

	@Override
	public Keyword selectKeywordBykeywordName(String keywordName) {
		return keywordDao.selectKeywordByKeywordName(keywordName);
	}

	@Override
	public int insertKeyword(String keywordName, int cid, int userId,
			String keywordClass, int keywordYears, double keywordPrice,
			String keywordNewdate, String keywordDate, int keywordApplyState,
			int keywordCheckState, int keywordUseState, int keywordAppState) {
		// TODO Auto-generated method stub
		return keywordDao.insertKeyword(keywordName, cid, userId, keywordClass,
				keywordYears, keywordPrice, keywordNewdate, keywordDate,
				keywordApplyState, keywordCheckState, keywordUseState,
				keywordAppState);
	}

	@Override
	public List<Keyword> selectKeywordNameByLike(String kname, Page page) {
		// TODO Auto-generated method stub
		return keywordDao.selectKeywordNameByLike(kname,page);
	}

}
