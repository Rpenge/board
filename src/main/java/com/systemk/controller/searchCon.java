package com.systemk.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.systemk.service.service2;

//<!-- 진행 방법 -->
//<!-- jsp요청 -> controller -> Service-> Mapper-> DB 쿼리실행 -->
@RestController
public class searchCon {
	@Autowired
	private service2 service1;

	
	//-------- 제조번호 && 검색할 단어 존재시 이벤트 발생 
		@ResponseBody
		@RequestMapping(value = "/searchM", method = RequestMethod.POST)
		    public Map searchM(@RequestParam Map<String, String> map) throws Exception { 
			String str1=map.get("inputval");
			System.out.println("aa : " + str1);
			 
			 System.out.println("Hello1");
			 HashMap resultMap = new HashMap<Object, Object>();
				resultMap.put("searchM", service1.stocksearchM(str1));
			 return resultMap;
		    }
		
		//-------- 이름&& 검색할 단어 존재시 이벤트 발생 
		@ResponseBody
		@RequestMapping(value = "/searchN", method = RequestMethod.POST)
		    public Map searchN(@RequestParam Map<String, String> map) throws Exception { 
			 //System.out.println(service1.stocksearchN(map));
			String str2=(String)map.get("inputval");
			 System.out.println("Hello2");
				HashMap resultMap = new HashMap<Object, Object>();
				resultMap.put("searchN",service1.stocksearchN(str2));
			 return resultMap;
		    }
}