package com.hellokoding.auth.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ogrencinot")
public class OgrenciNot {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(name="ODEVID")
	private long odevid;
	
	@Column(name="NO")
	private long no;
	
	@Column(name="ADI")
	private String adi;
	
	@Column(name="SOYADI")
    private String soyadi;	
    
    @Column(name="SINIFI")
	private String sinifi;
    
    @Column(name="KONUSU")
	private String konusu;
	
	@Column(name="SON_TESLIM_TARIHI")
    private String odevin_teslimtarihi;	
	
	@Column(name="ODEV_NOTU")
    private String odev_notu;
	
	@Column(name="ACIKLAMA")
    private String aciklama;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getNo() {
		return no;
	}

	public void setNo(long no) {
		this.no = no;
	}

	public String getAdi() {
		return adi;
	}

	public void setAdi(String adi) {
		this.adi = adi;
	}

	public String getSoyadi() {
		return soyadi;
	}

	public void setSoyadi(String soyadi) {
		this.soyadi = soyadi;
	}

	public String getSinifi() {
		return sinifi;
	}

	public void setSinifi(String sinifi) {
		this.sinifi = sinifi;
	}

	public String getKonusu() {
		return konusu;
	}

	public void setKonusu(String konusu) {
		this.konusu = konusu;
	}

	public String getodevin_teslimtarihi() {
		return odevin_teslimtarihi;
	}

	public void setodevin_teslimtarihi(String odevin_teslimtarihi) {
		this.odevin_teslimtarihi = odevin_teslimtarihi;
	}

	public String getodev_notu() {
		return odev_notu;
	}

	public void setodev_notu(String odev_notu) {
		this.odev_notu = odev_notu;
	}

	public String getAciklama() {
		return aciklama;
	}

	public void setAciklama(String aciklama) {
		this.aciklama = aciklama;
	}

	public long getOdevid() {
		return odevid;
	}

	public void setOdevid(long odevid) {
		this.odevid = odevid;
	}

	public String getOdevin_teslimtarihi() {
		return odevin_teslimtarihi;
	}

	public void setOdevin_teslimtarihi(String odevin_teslimtarihi) {
		this.odevin_teslimtarihi = odevin_teslimtarihi;
	}

	public String getOdev_notu() {
		return odev_notu;
	}

	public void setOdev_notu(String odev_notu) {
		this.odev_notu = odev_notu;
	}

	
	
	
	
	

}
