package com.hellokoding.auth.repository.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.hellokoding.auth.model.Ogrenci;



@Repository
public class OgrenciRepositoryDAOImpl implements OgrenciRepositoryDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	private RowMapper<Ogrenci> rowMapper=new RowMapper<Ogrenci>() {
		
		@Override
		public Ogrenci mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			Ogrenci Ogrenci=new Ogrenci();
			
			Ogrenci.setId(rs.getLong("id"));
			Ogrenci.setNO(rs.getLong("NO"));
			Ogrenci.setADI(rs.getString("ADI"));
			Ogrenci.setSOYADI(rs.getString("SOYADI"));
			Ogrenci.setSINIFI(rs.getString("SINIFI"));
			
			return Ogrenci;
		}
	};
	
	
	
	
	@Override
	public List<Ogrenci> findAll() {
		String sql="Select id,NO,ADI,SOYADI,SINIFI FROM heroku_53e5c2ca96bda5e.ogrenci ";
		
		return jdbcTemplate.query(sql, rowMapper);
	}

	
	@Override
	public Ogrenci findById(Long id) {
		String sql="Select id,NO,ADI,SOYADI,SINIFI FROM heroku_53e5c2ca96bda5e.ogrenci where id=?";	
		
		return  DataAccessUtils.singleResult( jdbcTemplate.query(sql, rowMapper,id)    );
				
				
	}
	
	
	@Override
	public List<Ogrenci> findByLastName(String soyadi) {
		String sql="Select id,NO,ADI,SOYADI,SINIFI FROM heroku_53e5c2ca96bda5e.ogrenci where SOYADI like ?";
		
		return jdbcTemplate.query(sql, rowMapper, "%" + soyadi + "%");
	}

	

	@Override
	public void create(Ogrenci Ogrenci) {
		
		 String sql = "INSERT INTO heroku_53e5c2ca96bda5e.ogrenci (NO,ADI,SOYADI,SINIFI) VALUES(?, ?, ?, ?)";
		
		 jdbcTemplate.update(sql,new Object[]{Ogrenci.getNO(),Ogrenci.getADI(),Ogrenci.getSOYADI(),Ogrenci.getSINIFI()});
		  

	}
	
	
	

	@Override
	public void update(Ogrenci Ogrenci) {
		
		String sql="update heroku_53e5c2ca96bda5e.ogrenci set  NO=?,ADI=?,SOYADI=?,SINIFI=? where id=?";
		jdbcTemplate.update(sql,new Object[]{Ogrenci.getNO(),Ogrenci.getADI(),Ogrenci.getSOYADI(),Ogrenci.getSINIFI(),Ogrenci.getId()});
	}

	@Override
	public void delete(Long id) {
		String sql = "delete from heroku_53e5c2ca96bda5e.ogrenci where id = ?";
		jdbcTemplate.update(sql,id);

	}


	@Override
	public List<Ogrenci> getAllStudentsByClass(String sinif) {
     String sql="Select id,NO,ADI,SOYADI,SINIFI FROM heroku_53e5c2ca96bda5e.ogrenci where  SINIFI like ?";
		
		return jdbcTemplate.query(sql, rowMapper,"%" + sinif + "%");
	}



}
