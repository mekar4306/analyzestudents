package com.hellokoding.auth.repository.jdbc;

import com.hellokoding.auth.model.OgrenciBasariDetay;

public interface OgrBasariRepositoryDAO {
	
	public OgrenciBasariDetay findSuccessHomeworkByNo(long NO);

}
