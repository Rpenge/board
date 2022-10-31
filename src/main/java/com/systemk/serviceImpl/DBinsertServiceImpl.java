package com.systemk.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.systemk.mapper.mapper_m;
import com.systemk.service.DBinsertService;

@Service
public class DBinsertServiceImpl implements DBinsertService {
	
	@Autowired
	private mapper_m mapper_mm;

//	public Map<String, Object> DBinsert(Map param) throws Exception {
	public Map<String, Object> DBinsert(Map param) throws Exception {
		param.put("seq",param.get("seq"));
		param.put("name",param.get("name"));
		param.put("sub",param.get("sub"));
		param.put("cont",param.get("cont"));
		mapper_mm.DBinsertMapper(param);
		
		return null;
	}

}