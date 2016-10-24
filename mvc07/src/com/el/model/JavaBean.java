package com.el.model;

import java.util.Date;

public class JavaBean {
	private int sabun;
	private String name;
	private Date nalja;
	private boolean result;
	
	public JavaBean() {
	}

	public JavaBean(int sabun, String name, Date nalja, boolean result) {
		super();
		this.sabun = sabun;
		this.name = name;
		this.nalja = nalja;
		this.result = result;
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

	public boolean isResult() {
		return result;
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

	public void setResult(boolean result) {
		this.result = result;
	}
	
}









