package com.systemk.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.systemk.service.DBinsertService;
import com.systemk.service.service2;

//<!-- 진행 방법 -->
//<!-- jsp요청 -> controller -> Service-> Mapper-> DB 쿼리실행 -->
@Controller
public class inserCon {
	@Autowired
	private service2 service1;
	
	@Autowired
	private DBinsertService DBservice;
//
	
	@RequestMapping(path = "/write", method = RequestMethod.GET)
	// --------html 과 map으로 통신 시도 (DB columns 여러개)
	public String write()  {
		System.out.println("Hello1");
		return "/write";
	} 

	@RequestMapping(value = "/PlusDB", method = RequestMethod.POST)
	    public String PlusDB(@RequestParam Map<String, String> map) throws Exception { 
		
		System.out.println("제조번호"+map.get("seq"));
		System.out.println("제품이름"+map.get("name"));
		System.out.println("글쓴이"+map.get("sub"));
		System.out.println("작성일"+map.get("reg_date"));
		System.out.println("조회수"+map.get("cont"));
		DBservice.DBinsert(map);
		return "/";
	
	}
	
	//-------- 제조번호 && 검색할 단어 존재시 이벤트 발생 
//	@ResponseBody
//	@RequestMapping(value = "/searchM", method = RequestMethod.POST)
//	    public Map searchM(@RequestParam Map<String, String> map) throws Exception { 
//		String str1=map.get("inputval");
//		System.out.println("aa : " + str1);
//		 
//		 System.out.println("Hello1");
//		 HashMap resultMap = new HashMap<Object, Object>();
//			resultMap.put("searchM", service1.stocksearchM(str1));
//		 return resultMap;
//	    }
	
	
}