package com.university.management.scholar.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.university.management.scholar.dto.ScholarList;

@Mapper
public interface ScholarMapper {

	List<ScholarList> scholarlistSelect(Map<String, String> params);

}
