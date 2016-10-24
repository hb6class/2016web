package com.guest.model;

import java.sql.Date;

public class GuestBean {
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	
	public GuestBean() {//디폴트 생성자를 선언
	}
	
	public int getSabun() {
		return sabun;
	}
	public String getName() {
		return name;
	}
	public Date getNalja() {
		return nalja;
	}
	public int getPay() {
		return pay;
	}
	public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	
	
}
