package com.systemk.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.systemk.vo.vo_m;

@Mapper
public interface mapper_m{
	
	// --------전체 조회 (DB columns 여러개)
	List<vo_m> check();
	
	// --------특정 단어 조회 (DB columns 여러개)
	List<vo_m> searchM(String item);
	List<vo_m> searchN(String item);
	
	
	List<Map> DBinsertMapper(Map item);
	int DBdeleteMapper(int item);
	
	//--------html 과 String 으로 통신 성공 (DB columns 1개)
	//	public String check();
	

}