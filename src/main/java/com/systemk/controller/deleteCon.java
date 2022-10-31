package com.systemk.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.systemk.service.DBdeleteService;
import com.systemk.service.service2;

@Controller
public class deleteCon {
	@Autowired
	private service2 service1;
	
	@Autowired
	private DBdeleteService delService;

	
	@RequestMapping(path = "/delete", method = RequestMethod.GET)
	// --------html 과 map으로 통신 시도 (DB columns 여러개)
	public String delete()  {
		System.out.println("delete");
		return "/delete";
	} 
	
	//선택 삭제
	@ResponseBody
	@RequestMapping(path = "/selectdel", method = RequestMethod.GET)
	// --------html 과 map으로 통신 시도 (DB columns 여러개)
	public String selectdel(@RequestParam(value = "seq") List<Integer> seq)throws Exception  {
//	public String selectdel(HttpSession session, HttpServletRequest req)throws Exception {
		for(int i=0; i<seq.size(); i++) {
			delService.DBdelete(seq.get(i));
			System.out.println(seq.get(i));
			}
		System.out.println("selectdelete end");
		return "/delete";
	} 
	
	
	
	
	
}
	