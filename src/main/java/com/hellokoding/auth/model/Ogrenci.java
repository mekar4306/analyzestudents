package com.hellokoding.auth.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ogrenci")
public class Ogrenci {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	
	@Column(name="NO")
	private long NO;

	@Column(name="ADI")
	private String ADI;
	
	@Column(name="SOYADI")
    private String SOYADI;	
    
    @Column(name="SINIFI")
	 private String SINIFI;
	
	public String getSINIFI() {
		return SINIFI;
	}

	public void setSINIFI(String sINIFI) {
		SINIFI = sINIFI;
	}

	
	/*@Column(name="SINIFI")
    private LinkedHashMap<String, String> SINIFI;
	
	
	public Ogrenci() {
		SINIFI=new LinkedHashMap<>();
		SINIFI.put("9/A", "9/A");
		SINIFI.put("9/B", "9/B");
		SINIFI.put("9/C", "9/C");
		SINIFI.put("10/A","10/A");
		SINIFI.put("10/B","10/B");
		SINIFI.put("10/C", "10/C");
		SINIFI.put("11/A", "11/A");
		SINIFI.put("11/B", "11/B");
		SINIFI.put("11/C", "11/C");
		SINIFI.put("12/A", "11/A");
		SINIFI.put("12/B", "12/B");
		SINIFI.put("12/C", "12/C");
		
		
	}
	
	public LinkedHashMap<String, String> getSINIFI() {
		return SINIFI;
	}




	public void setSINIFI(LinkedHashMap<String, String> sINIFI) {
		SINIFI = sINIFI;
	}

*/

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getNO() {
		return NO;
	}

	public void setNO(long nO) {
		NO = nO;
	}

	public String getADI() {
		return ADI;
	}

	public void setADI(String aDI) {
		ADI = aDI;
	}

	public String getSOYADI() {
		return SOYADI;
	}

	public void setSOYADI(String sOYADI) {
		SOYADI = sOYADI;
	}






	
	
	
	
	
	
	

}
