package com.university.management.president;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.university.management.board.dto.Board;
import com.university.management.board.dto.PageInfo;
import com.university.management.president.service.PresidentService;

@Controller

public class PresidentController {

	@Autowired
	private PresidentService service;

	@RequestMapping("/presidentplslist")
	public String showPresidentPlsList(Model model,	@RequestParam(value = "page", defaultValue = "1") int page) {
System.out.println("presidentplslist실행");
		Map<String, String> params = new HashMap<String, String>();
		int listLimit = 5; // 한 페이지에 보여질 게시글 수
		int totalRowCount = service.getPresidentCount(); // 전체 게시글의 수
		System.out.println("totalRowCount : " + totalRowCount);

		// 페이지네이션 설정
		PageInfo pageSettings = new PageInfo(page, totalRowCount, 5);
		pageSettings.pageSetting(totalRowCount);

		int firstRow = pageSettings.getFirstRow();

		System.out.println("firstRow: " + firstRow);

		params.put("firstRow", String.valueOf(firstRow));
		params.put("listLimit", String.valueOf(listLimit));
		
		System.out.println("params" +params);
		
		List<Board> list = service.getAllList(params);
		System.out.println(list);
		model.addAttribute("list", list);
		model.addAttribute("pageInfo", pageSettings);
		model.addAttribute("count", totalRowCount);


		return "/president/presidentplslist";
	}

	@RequestMapping("/presidentplsdetail")
	public String showDetailPage(Model model, @RequestParam("bo_no") int bo_no) {
		
		Board board =  service.getBoardByNo(bo_no);
		
		model.addAttribute("board", board);
		
		return "/president/presidentplsdetail";
	}

}
