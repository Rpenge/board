package com.systemk.vo;


import java.util.Date;
//@Data
//초반에는 data쓰지말고 getter,setter를 만들어서 실행해 봐라.(자동화 키도 잇다 )
public class vo_m{	
	private int seq;
	private String name;
	private String sub;
	private Date reg_date;
	private int cont;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getCont() {
		return cont;
	}
	public void setCont(int cont) {
		this.cont = cont;
	}
	
	//	private  String C1; //테이블명 sss1 , 콜롬명 C1,  데이타 dog
	//
	//	public  String getC1() {
	//		return C1;
	//	}
	//
	//	public void setC1(String c1) {
	//		C1 = c1;
	//	}
	
}