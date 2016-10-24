package com.mvc2.model;

import java.util.Date;

public class GuestDto {
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	
	public GuestDto() {
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
	public GuestDto setSabun(int sabun) {
		this.sabun = sabun;
		return this;
	}
	public GuestDto setName(String name) {
		this.name = name;
		return this;
	}
	public GuestDto setNalja(Date nalja) {
		this.nalja = nalja;
		return this;
	}
	public GuestDto setPay(int pay) {
		this.pay = pay;
		return this;
	}
	
	
}
