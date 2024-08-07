package com.university.management.board.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

import com.university.management.board.dto.Board;

@Mapper
public interface BoardMapper {

	// 게시글 갯수
	int selectBoardCount(Map<String, String> boardlist);

	// 게시글 전체 조회
	List<Board> selectBoardList();

	// 게시글 번호 조회 - 상세 페이지
	Board findByNo(int no);
	
	// 조회수
	int readCount(int no);

	// 공지사항 추가
	List<Board> boardInfoInsert(String title, String file, String detail);

}
