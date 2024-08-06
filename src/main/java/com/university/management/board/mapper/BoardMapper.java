package com.university.management.board.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.university.management.board.dto.Board;

@Mapper
public interface BoardMapper {

	// 게시글 갯수
	int selectBoardCount(Map<String, String> boardlist);

	// 게시글 전체 조회
	List<Board> selectBoardList();

	Board findByNo(int no);
	
	// 조회수
	int readCount(int no);

	int selectLogin(Integer loginNo);

}
