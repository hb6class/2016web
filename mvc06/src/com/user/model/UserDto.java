package com.user.model;

public class UserDto {
	private int sabun;
	private String name;
	public UserDto() {
	}
	public UserDto(int sabun, String name) {
		super();
		this.sabun = sabun;
		this.name = name;
	}
	public int getSabun() {
		return sabun;
	}
	public String getName() {
		return name;
	}
	public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "UserDto [sabun=" + sabun + ", name=" + name + "]";
	}
	
}
