package com.hellokoding.auth.model;




import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="odev")
public class Odev {


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	


	@Column(name="KONUSU")
	private String konusu;
	
	@Column(name="SON_TESLIM_TARIHI")
    private String teslimtarihi;	
	 
   
     @Column(name="SINIFI")
     private String verilensinif;
   
   

	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}



	public String getKonusu() {
		return konusu;
	}


	public void setKonusu(String konusu) {
		this.konusu = konusu;
	}


	public String getTeslimtarihi() {
		return teslimtarihi;
	}


	public void setTeslimtarihi(String teslimtarihi) {
		this.teslimtarihi = teslimtarihi;
	}


	public String getVerilensinif() {
		return verilensinif;
	}


	public void setVerilensinif(String verilensinif) {
		this.verilensinif = verilensinif;
	}






	

	

	

	

	


	

	

	

	
	
    
    
	






	
	
	
	
	
	
	

}
