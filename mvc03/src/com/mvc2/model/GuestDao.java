package com.mvc2.model;

import java.util.ArrayList;
import java.util.Date;

public class GuestDao {
	// Data Access Object
	static ArrayList<GuestDto> list= new ArrayList<GuestDto>();
	
	public GuestDao() {
	}
	
	public ArrayList<GuestDto> selectAll(){
			
		return list;
	}

	public int insertOne(int sabun, String name, int pay) {
		int result=0;
		GuestDto dto= new GuestDto();
		dto.setSabun(sabun).setName(name)
		.setNalja(new Date()).setPay(pay);
		list.add(dto);
		result++;
		return result;
	}
}








