package com.mvc2.model;

import java.util.Date;

public class GuestDto {
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	
	public GuestDto() {
	}
	public GuestDto(int sabun,String name,Date nalja,int pay){
		this.sabun=sabun;
		this.name=name;
		this.nalja=nalja;
		this.pay=pay;
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
	@Override
	public boolean equals(Object obj) {
		return this.toString().equals(obj.toString());
	}
	
	@Override
	public String toString() {
		return sabun+":"+name+":"+nalja+":"+pay;
	}
}
