package com.university.management.president.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.university.management.board.dto.Board;
import com.university.management.president.mapper.PresidentMapper;

@Service
public class PresidentService {

	@Autowired
	private PresidentMapper mapper;
	
	public List<Board> getAllList(Map<String, String> params) {
		System.out.println("service selectBoardList : " + params);
		

		// 값이 제대로 있는지 확인
		if (params.get("firstRow") == null) {
			throw new IllegalArgumentException("firstRow 값 = null");
		} else if (params.get("listLimit") == null) {
			throw new IllegalArgumentException("listLimit 값 =  null");
		}
		
		int firstRow = Integer.parseInt(params.get("firstRow"));
		int listLimit = Integer.parseInt(params.get("listLimit"));
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("firstRow", firstRow);
		map.put("listLimit", listLimit);

		System.out.println("Parsed firstRow: " + firstRow);
		System.out.println("Parsed listLimit: " + listLimit);
		
		return mapper.getAllList(map);
	}

	public Board getBoardByNo(int bo_no) {
		return mapper.getBoardByNo(bo_no) ;
	}

	public int insertboard(int stu_no, String title, String content) {
		
		Board board = new Board();
		
		board.setStu_no(stu_no);
		board.setTitle(title);
		board.setContent(content);
		
		return mapper.insertboard(board);
	}

	public int getPresidentCount() {
		
		return mapper. getPresidentCount();
	}

}
