package com.university.management.board.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply {

	private int reNo;				// 댓글 인덱스
	private int boNo;				// 게시판 인덱스
	private int stuNo;				// 학번
	private int empNo;				// 교직원 번호
	private String replyContent;	// 댓글 내용
	private Date createDate;		// 작성날짜
	private Date modifyDate;		// 수정날짜
	private int rePlus;				// 대댓글

}
