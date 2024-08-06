package com.university.management.faculty.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.university.management.board.dto.Board;
import com.university.management.board.mapper.BoardMapper;

@Service
public class FacultyService {

	@Autowired
	private BoardMapper mapper;

	// 총 게시글 갯수
	public int getBoardCount(Map<String, String> boardlist) {
		return mapper.selectBoardCount(boardlist);
	}

	// 전체 게시글 중에 첫번째 페이지에서 10개의 게시글 반환
	/*
	 * public List<Board> getBoardList(PageInfo info, Map<String, String> boardlist)
	 * { return mapper.selectBoardList(boardlist); }
	 */
	public List<Board> getBoardList() {
		System.out.println("FacultyService-getBoardList");
		
		List<Board> list = new ArrayList<Board>();
		
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
	public List<Board> boardInfoInsert(String title, String file, String detail) {
		return mapper.boardInfoInsert(title,file,detail);
	}

}
