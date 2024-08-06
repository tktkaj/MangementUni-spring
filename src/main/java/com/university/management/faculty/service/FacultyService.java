package com.university.management.faculty.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		return mapper.selectBoardList();
	}

	public Board findByNo(int no) {
		return mapper.findByNo(no);
	}

	// 조회수
	public int readCount(int no) {
		return mapper.readCount(no);
	}

	public boolean selectLogin(Integer loginNo) {

		boolean res = false;

		int value = mapper.selectLogin(loginNo);

		if (value != 0) {
			res = true;
			return res;
		}
		return res;
	}

}
