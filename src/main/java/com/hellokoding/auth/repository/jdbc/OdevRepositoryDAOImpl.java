package com.hellokoding.auth.repository.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import com.hellokoding.auth.model.OgrenciNot;




@Repository
public class OdevRepositoryDAOImpl implements OdevRepositoryDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
     private RowMapper<OgrenciNot> rowMapper=new RowMapper<OgrenciNot>() {
		
		@Override
		public OgrenciNot mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			OgrenciNot ogrenciNot=new OgrenciNot();
	
			ogrenciNot.setNo(rs.getInt("NO"));
			ogrenciNot.setAdi(rs.getString("ADI"));
			ogrenciNot.setSoyadi(rs.getString("SOYADI"));
			ogrenciNot.setSinifi(rs.getString("SINIFI"));
			ogrenciNot.setKonusu(rs.getString("KONUSU"));
			
			ogrenciNot.setodev_notu(rs.getString("ODEV_NOTU"));
			
			return ogrenciNot;
		}
	}; 
	
	
	@Override
	public void giveMarkAndSaveHomework(long id) {
	
		String sql = "INSERT INTO ogrencinot (NO,ADI,SOYADI,SINIFI,KONUSU,SON_TESLIM_TARIHI,ODEVID)"+
				      "SELECT  O.NO, O.ADI,O.SOYADI,O.SINIFI,OD.KONUSU,OD.SON_TESLIM_TARIHI,OD.id FROM heroku_53e5c2ca96bda5e.odev OD , heroku_53e5c2ca96bda5e.ogrenci O"
				      + " where  OD.SINIFI=O.SINIFI and OD.id= ?  ";
		
		jdbcTemplate.update(sql, id);
		

	}


	@Override
	public List<OgrenciNot> findAllHomeworkNotesByStudentId(long NO) {
		
		String sql = "SELECT NO,ADI,SOYADI,SINIFI,KONUSU, ODEV_NOTU  "
				     + "FROM heroku_53e5c2ca96bda5e.ogrencinot WHERE NO=?";
		
		 return  jdbcTemplate.query(sql, rowMapper, NO)  ;
	}


	@Override
	public void deleteHomeworksNotesByOdevId(long odevId) {
		String sql = "DELETE FROM heroku_53e5c2ca96bda5e.ogrencinot WHERE ODEVID= ?";
		
		jdbcTemplate.update(sql,odevId);
		
	}
	
	
	
	
	

	
}
