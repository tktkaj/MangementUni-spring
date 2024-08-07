package com.university.management.faculty.service;

import java.util.ArrayList;
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
	public int getBoardCount(Map<String, String> boardlist) {
		int list = mapper.selectBoardCount(boardlist);
		System.out.println("list : " + list);
		return list;
	}

	// 전체 게시글 중에 첫번째 페이지에서 10개의 게시글 반환
	/*
	 * public List<Board> getBoardList(PageInfo info, Map<String, String> boardlist)
	 * { return mapper.selectBoardList(boardlist); }
	 */
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

	// 공지사항 리스트 추출 및 페이징 처리, 키워드 검색 기능
	public List<Board> selectBoardListPage(Map<String, String> params) {

		int limit = Integer.parseInt(params.get("limit"));
		int offset = Integer.parseInt(params.get("offset")); 

		return mapper.selectBoardListPage(limit, offset, params);
	}

}
