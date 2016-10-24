package com.up.model;

public class FileDto {
	private int sabun;
	private String name;
	private String orgfilenm;
	private String refilenm;
	
	public FileDto() {
	}

	

	public FileDto(int sabun, String name, String orgfilenm, String refilenm) {
		super();
		this.sabun = sabun;
		this.name = name;
		this.orgfilenm = orgfilenm;
		this.refilenm = refilenm;
	}



	public int getSabun() {
		return sabun;
	}

	public String getName() {
		return name;
	}

	public String getOrgfilenm() {
		return orgfilenm;
	}

	public void setSabun(int sabun) {
		this.sabun = sabun;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setOrgfilenm(String orgfilenm) {
		this.orgfilenm = orgfilenm;
	}



	public String getRefilenm() {
		return refilenm;
	}



	public void setRefilenm(String refilenm) {
		this.refilenm = refilenm;
	}
	
	
}
