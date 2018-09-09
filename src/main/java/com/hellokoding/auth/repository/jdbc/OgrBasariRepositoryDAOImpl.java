package com.hellokoding.auth.repository.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.hellokoding.auth.model.OgrenciBasariDetay;

@Repository
public class OgrBasariRepositoryDAOImpl implements OgrBasariRepositoryDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	private RowMapper<OgrenciBasariDetay> rowMapper=new RowMapper<OgrenciBasariDetay>(){

		@Override
		public OgrenciBasariDetay mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			OgrenciBasariDetay ogrenciBasariDetay=new OgrenciBasariDetay();
			
			ogrenciBasariDetay.setOdev_Basarisi(rs.getInt(1));
			ogrenciBasariDetay.setTeslim_Edilen_Odev_Sayisi(rs.getInt(3));
			ogrenciBasariDetay.setTeslim_Edilmeyen_Odev_Sayisi(rs.getInt(4));
			ogrenciBasariDetay.setToplam_Verilen_Odev_Sayisi(rs.getInt(2));
			
			return ogrenciBasariDetay;
		}
		
		
		
		
	};
	
	
	
	
	public OgrenciBasariDetay findSuccessHomeworkByNo(long NO) {
		String sql = "SELECT avg(ODEV_NOTU) as Odev_Basarisi,"
				   + "COUNT(*) as Toplam_Verilen_Ödev,"
				   + "COUNT(ODEV_NOTU) AS Teslim_Edilen_Ödev,"
				   + "COUNT(*)-count(ODEV_NOTU) AS Teslim_Edilmeyen_Ödev   "
				   + "from heroku_53e5c2ca96bda5e.ogrencinot  WHERE NO=?";

		return DataAccessUtils.singleResult(jdbcTemplate.query(sql, rowMapper, NO));

	}

}
