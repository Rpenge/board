package com.systemk.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.systemk.service.service2;

//<!-- 진행 방법 -->
//<!-- jsp요청 -> controller -> Service-> Mapper-> DB 쿼리실행 -->
@RestController
public class controller_m {
	@Autowired
	private service2 service1;

	//-------- 부팅시 모든 DB정보 호출
	@ResponseBody
	@RequestMapping(value = "/test", method = RequestMethod.POST)
	// --------html 과 map으로 통신 시도 (DB columns 여러개)
	public Map<String, Object> test(HttpServletRequest request) throws Exception {
		HashMap resultMap = new HashMap<Object, Object>();
		System.out.println("test내부");
		resultMap.put("test", service1.stockList());
		return resultMap;
	} 
//	//-------- 제조번호 && 검색할 단어 존재시 이벤트 발생 
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
//	
//	//-------- 이름&& 검색할 단어 존재시 이벤트 발생 
//	@ResponseBody
//	@RequestMapping(value = "/searchN", method = RequestMethod.POST)
//	    public Map searchN(@RequestParam Map<String, String> map) throws Exception { 
//		 //System.out.println(service1.stocksearchN(map));
//		String str2=(String)map.get("inputval");
//		 System.out.println("Hello2");
//			HashMap resultMap = new HashMap<Object, Object>();
//			resultMap.put("searchN",service1.stocksearchN(str2));
//		 return resultMap;
//	    }

	
	
	// --------html 과 통신 가능 확인 성공
	// public String test(@RequestParam String ggg) {
	// System.out.println("Hello");
	// return "Hello";
	// }

	// --------html 과 DB String 연결 성공(DB columns 1개)
	// public String test() {
	// System.out.println("Hello");
	// String aa= " ";
	// try {
	// aa=service1.stockList();
	// } catch (Exception e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// return aa;
	// }
}
