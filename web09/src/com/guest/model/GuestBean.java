package com.guest.model;

import java.util.Date;

public class GuestBean {
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	
	public GuestBean() {
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
		System.out.println("bean-name:"+name);
		this.name = name;
	}
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	
	
}
