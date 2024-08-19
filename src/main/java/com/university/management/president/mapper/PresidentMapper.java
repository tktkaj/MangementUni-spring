package com.university.management.president.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.university.management.board.dto.Board;

@Mapper
public interface PresidentMapper {

	/** 총장게시판 목록을 출력하는 메서드입니다. */

	Board getBoardByNo(int bo_no);

	int insertboard(Board board);

	int getPresidentCount();

	List<Board> getAllList(Map<String, Object> map);

}
