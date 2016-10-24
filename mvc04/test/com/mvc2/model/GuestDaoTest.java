package com.mvc2.model;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class GuestDaoTest {
	GuestDao dao;
	
	@Before
	public void setDao(){
		this.dao = new GuestDao();
	}

	@Test
	public void testInsertOne() {
		dao.insertOne(1111, "aa", 11);
		
		assertEquals(new GuestDto(1111,"aa",null,11)
						,dao.selectOne(0));
	}
	@Test
	public void testselectAll(){
		assertEquals(1, dao.selectAll().size());
	}
	@After
	public void end(){
		System.out.println();
	}
}
