package com.systemk.service;

import java.util.List;

import com.systemk.vo.vo_m;

public interface service2{
		
	// --------html 과 map으로 통신 시도 (DB columns 여러개)
	public List<vo_m> stockList()throws Exception;
	
	// --------특정 단어 조회(DB columns 여러개)
	public List<vo_m> stocksearchM(String param)throws Exception;
	public List<vo_m> stocksearchN(String param)throws Exception;
	
	//--------html 과 String 으로 통신 성공 (DB columns 1개)
	//	public String stockList()throws Exception;
}
