package com.university.management.faculty;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.university.management.board.dto.Board;
import com.university.management.board.dto.PageInfo;
import com.university.management.faculty.service.FacultyService;

@Controller
public class FacultyController {
	
	@Autowired
	private HttpSession session;

	@Autowired
	private FacultyService service;

	@RequestMapping("/infoboard")
	public String infoboard(Model model) {
		System.out.println("FacultyController-infoboard() 실행");

		Map<String, String> params = new HashMap<>();

//		try {
//			String searchValue = param.get("searchValue");
//
//			if (searchValue != null && searchValue.length() > 0) {
//				String searchType = param.get("searchType");
//				params.put(searchType, searchValue);
//				System.out.println("boardlist : " + params);
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}

		// 공지사항 목록 불러오기
		List<Board> boardList = service.getBoardList();

		// 총 게시글 수 가져오기
		int boardcount = service.getBoardCount(params);
		/*
		 * PageInfo info = new PageInfo(page, 10, boardcount, 10);
		 * 
		 * // 페이징 처리할 수 있는 데이터 넘기기 List<Board> listpage = service.getBoardList(info,
		 * boardlist);
		 */

		model.addAttribute("params", params);
		model.addAttribute("boardList", boardList);
		model.addAttribute("count", boardcount);

		return "faculty/infoboard";
	}

	@RequestMapping("/infodetail")
	public String infodetail(Model model, @RequestParam("bo_no") int no) {
		System.out.println("FacultyController-infodetail() 실행");
		
		/*
		 * Integer loginNo = (Integer) session.getAttribute("emp");
		 * System.out.println(loginNo);
		 */
		
		/* boolean res = service.selectLogin(loginNo); */

		Board board = service.findByNo(no);
		System.out.println(board);

		// 조회 수 증가 
		int readCount = service.readCount(no);

		if (board == null) {
			model.addAttribute("msg", "로그인 정보가 없습니다.");
			return "faculty/infoboard";
		}

		/* model.addAttribute("login",loginNo); */
		model.addAttribute("board", board);
		model.addAttribute("readCount", readCount);

		// model.addAttribute("replyList", board.getReplies());

		return "faculty/infodetail";
	}

	@RequestMapping("/writeinfo")
	public String writeinfo() {

		return "faculty/writeinfo";
	}

	@RequestMapping("/updateinfo")
	public String updateinfo() {

		return "faculty/updateinfo";
	}

	@RequestMapping("/objectionList")
	public String objectionList() {
		return "objection/objectionList";
	}

	// 성적이의신청 데이터 목록 받아오기
	/*
	 * @PostMapping("/objectionSearch")
	 * 
	 * @ResponseBody public List<> filterData(@RequestParam String
	 * department, @RequestParam String subject, @RequestParam String grade) {
	 * return service.objectionFilterData(department, subject, grade); }
	 */

	@RequestMapping("/scholarList")
	public String scholarList() {
		return "scholarship/scholarList";
	}

}
