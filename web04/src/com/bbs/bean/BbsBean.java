package com.bbs.bean;

import java.sql.Date;

// javaBean °´Ã¼ -> dto -> vo

public class BbsBean {
	private int rnum;
	private String id;
	private String title;
	private String content;
	private Date nalja;
	private int cnt;
	
	public int getRnum(){
		return this.rnum;
	}
	public void setRnum(int rnum){
		this.rnum=rnum;
	}
	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id=id;
	}
	public String getTitle(){
		return title;
	}
	public void setTitle(String title){
		this.title=title;
	}
	public String getContent(){
		return content;
	}
	public void setContent(String content){
		this.content=content;
	}
	public Date getNalja(){
		return nalja;
	}
	public void setNalja(Date nalja){
		this.nalja=nalja;
	}
	public int getCnt(){
		return cnt;
	}
	public void setCnt(int cnt){
		this.cnt=cnt;
	}
}
