package com.mvc.model;

public class StuDto {
	private int num,kor,eng,math;
	private String name;
	
	public StuDto() {
	}
	public StuDto(int num, int kor, int eng, int math, String name) {
		super();
		this.num = num;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.name = name;
	}

	public int getNum() {
		return num;
	}

	public int getKor() {
		return kor;
	}

	public int getEng() {
		return eng;
	}

	public int getMath() {
		return math;
	}

	public String getName() {
		return name;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public void setMath(int math) {
		this.math = math;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "StuDto [num=" + num + ", kor=" + kor + ", eng=" + eng
				+ ", math=" + math + ", name=" + name + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + num;
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		StuDto other = (StuDto) obj;
		if (num != other.num)
			return false;
		return true;
	}
	
	
}
