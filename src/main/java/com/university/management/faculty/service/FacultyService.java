package com.university.management.faculty.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.university.management.board.dto.Board;
import com.university.management.board.dto.PageInfo;
import com.university.management.board.mapper.BoardMapper;

@Service
public class FacultyService {

	@Autowired
	private BoardMapper mapper;

	// 총 게시글 갯수	
	public int getBoardCount() {		
		return mapper.selectBoardCount();
	}
	
	public int getBoardListCount(Map<String,String> map) {
		return mapper.getBoardListCount(map);
	}

	// 전체 게시글 중에 첫번째 페이지에서 10개의 게시글 반환
	public List<Board> getBoardList() {
		System.out.println("FacultyService-getBoardList");
		return mapper.selectBoardList();
	}

	public Board findByNo(int no) {
		return mapper.findByNo(no);
	}

	// 조회수
	public int readCount(int no) {
		return mapper.readCount(no);
	}

	// 공지사항 추가
	public int insertWrite(Board board) {
		return mapper.insertWrite(board);
	}

	// emp_name으로 emp_id 추출
	public int empSelect(String loginname) {
		return mapper.empSelect(loginname);
	}

	// 공지사항 리스트 추출 및 페이징 처리
	public List<Board> selectBoardList(Map<String,String> params) {
		System.out.println("service selectBoardList : " + params);
	
		String limitNo = params.get("startNo");
		String endNo = params.get("endNo");
		
		Map<String,String> map = new HashMap<>();
		
		map.put("limitNo", limitNo);
		map.put("endNo", endNo);
		//map.put("params", params);
		
		return mapper.selectBoardList(map);
	}




}
