package com.university.management.scholar.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.university.management.scholar.dto.Scholar;
import com.university.management.scholar.dto.ScholarList;
import com.university.management.scholar.mapper.ScholarMapper;

@Service
public class ScholarService {
    @Autowired
	ScholarMapper mapper;
	
	public List<ScholarList> scholarlistSelect(Map<String, String> params) {
	
		return mapper.scholarlistSelect(params);
	}

	public int scholarInsert(Scholar sch) {
		System.out.println("ScholarService안에scholarInsert실행");
		return mapper.scholarInsert(sch);
	}

}
