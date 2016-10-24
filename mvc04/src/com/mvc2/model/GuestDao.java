package com.mvc2.model;

import java.util.ArrayList;
import java.util.Date;

public class GuestDao {
	private static ArrayList<GuestDto> list = new ArrayList<GuestDto>();
	
	public GuestDao() {
	}

	public ArrayList selectAll() {
		return list;
	}
	
	public void insertOne(int sabun, String name, int pay){
		GuestDto dto= new GuestDto();
		dto.setSabun(sabun);
		dto.setName(name);
//		dto.setNalja(new Date());
		dto.setPay(pay);
		list.add(dto);
	}
	
	public GuestDto selectOne(int index){
		GuestDto dto=list.get(index);
		return dto;
	}

	public void updateOne(int idx, int sabun, String name, int pay) {
		GuestDto dto = new GuestDto();
		dto.setSabun(sabun);
		dto.setName(name);
		dto.setNalja(new Date());
		dto.setPay(pay);
		list.set(idx, dto);
	}
}
