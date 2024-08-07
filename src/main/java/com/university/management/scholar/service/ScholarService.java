package com.university.management.scholar.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.university.management.scholar.dto.ScholarList;
import com.university.management.scholar.mapper.ScholarMapper;

@Service
public class ScholarService {
    @Autowired
	ScholarMapper mapper;
	
	public List<ScholarList> scholarlistSelect(Map<String, String> params) {
	
		return mapper.scholarlistSelect(params);
	}

}
