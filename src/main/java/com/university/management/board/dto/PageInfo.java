package com.university.management.board.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PageInfo {

	private int currentPage; 	// 현재 페이지
	private int pageLimit; 		// 한 페이지에 보여질 페이지 수
	private int listCount; 		// 총 게시글의 수
	private int listLimit; 		// 한 페이지에 보여질 게시글 수

	// 전체 페이지 중 가장 마지막 페이지
	public int getMaxPage() {

		return (int) Math.ceil((double) this.listCount / this.listLimit);
	}

	// 이전 페이지로 이동
	public int getPrevPage() {
		int prevPage = this.currentPage - 1;
		return prevPage < 1 ? 1 : prevPage;
	}

	// 다음 페이지로 이동
	public int getNextPage() {
		int nextPage = this.currentPage + 1;
		return nextPage > getMaxPage() ? getMaxPage() : nextPage;
	}

	// 페이징 중 가장 첫번째 페이지로 이동
	public int getStartPage() {
		// this.pageLimit : 한 페이지 그룹당 페이지 수를 나타냄.
		int page = (((this.currentPage - 1) / this.pageLimit) * this.pageLimit) + 1;
		System.out.println("currentPage : " + currentPage);
		System.out.println("getStartPage : " + page);
		return page;
	}

	// 페이징 중 가장 마지막으로 이동하는 페이지 함수
	public int getLastPage() {
		int endPage = getStartPage() + this.pageLimit - 1;
		System.out.println("endPage : " + endPage);
		return endPage > getMaxPage() ? getMaxPage() : endPage;
	}

	// 현재 페이지에 대한 OFFSET 계산
	public int getOffset() {
		return (this.currentPage - 1) * this.listLimit;
	}
}
