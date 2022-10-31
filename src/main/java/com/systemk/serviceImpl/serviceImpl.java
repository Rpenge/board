package com.systemk.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.systemk.mapper.mapper_m;
import com.systemk.service.service2;
import com.systemk.vo.vo_m;

@Service
public class serviceImpl implements service2 {
	
	@Autowired
	private mapper_m mapper_mm;

	// --------html 과 map으로 통신 시도 (DB columns 여러개)
	
	//-------- 부팅시 모든 DB정보 호출
	@Override
	public  List<vo_m> stockList()throws Exception{
		return mapper_mm.check();
	}
	
	//-------- 제조번호 && 검색할 단어 존재시 이벤트 발생 
	@Override
	public List<vo_m> stocksearchM(String param){	
		String str2="%"+ param+"%";
		System.out.println(str2);
		System.out.println(param);
		System.out.println(mapper_mm.searchM(str2));
		System.out.println(mapper_mm.searchM(param));
        return mapper_mm.searchM(str2);
	}
	
	//-------- 이름&& 검색할 단어 존재시 이벤트 발생 
	@Override
	public List<vo_m> stocksearchN(String param){		
		String str2="%"+ param+"%";
		System.out.println(str2);
		System.out.println(param);
		System.out.println(mapper_mm.searchN(str2));
		System.out.println(mapper_mm.searchN(param));
        return mapper_mm.searchN(str2);
	}
	
	//--------html 과 String 으로 통신 성공 (DB columns 1개)
	//	public String stockList() throws Exception{
	//	String aa = mapper_mm.check();
	//	return aa;
	//}
	


	

	
}