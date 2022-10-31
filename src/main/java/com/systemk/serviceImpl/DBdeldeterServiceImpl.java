package com.systemk.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.systemk.mapper.mapper_m;
import com.systemk.service.DBdeleteService;

@Service
public class DBdeldeterServiceImpl implements DBdeleteService{
	@Autowired
	private mapper_m mapper_mm;
	
	//선택삭제
	public int DBdelete(int param)throws Exception {	
		System.out.println("param");
	//	System.out.println(param);	
	return mapper_mm.DBdeleteMapper(param);
		
	}
}